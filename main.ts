import { ensureDir, emptyDir } from 'https://deno.land/std@0.102.0/fs/mod.ts'
import { join, dirname } from 'https://deno.land/std@0.102.0/path/mod.ts'
import { parse as parseArgs } from 'https://deno.land/std@0.104.0/flags/mod.ts'
import { story, createNpc, createQuest, detectItem, toSnbt, rawJson, toGive } from './compile-to-mcfunction.ts'
import { parse } from './parse-yaml.ts'
import { item } from './item.ts'
import { generate_pile, populate_shelf } from './armorstand-tools.ts'
import { CONSTS } from './consts.ts'

// \s(?:Paper|Spigot|Bukkit)\..+?:\s(?:\[.+?\]|.+?),

export type Lines = string | Lines[]

function lines (...lines: Lines[]): string {
  function toLines (line: Lines): string {
    if (typeof line === 'string') {
      return line + '\n'
    } else {
      return line.map(line => toLines(line)).join('')
    }
  }
  return toLines(lines)
}

let scheduled_rates: Set<number> = new Set();

export function schedule(command: Lines, rate: number, functions: Record<string, Lines>) {
  if (functions[`scheduled/s-${rate}`] === undefined) {
    functions[`scheduled/s-${rate}`] = [`schedule function generated:scheduled/s-${rate} ${rate}t`];
    scheduled_rates.add(rate);
  }

  functions[`scheduled/s-${rate}`] = [
    command,
    functions[`scheduled/s-${rate}`]
  ]
}

// https://stackoverflow.com/questions/194846/is-there-any-kind-of-hash-code-function-in-javascript
export function hash(t: string){
    var hash = 0;
    for (var i = 0; i < t.length; i++) {
        var character = t.charCodeAt(i);
        hash = ((hash<<5)-hash)+character;
        hash = hash & hash; // Convert to 32bit integer
    }
    return hash;
}

export async function init (
  yamlPath: string,
  basePath: string,
  { namespace = 'minecraft', description = 'Mysterious datapack' } = {}
): Promise<void> {
  await emptyDir(join(basePath, `./data/${namespace}/`))
  const cache = Object.assign({
    itemphysics: {},
    shelves: {}
  }, JSON.parse(await Deno.readTextFile('./cache.json')));
  const data = parse(await Deno.readTextFile(yamlPath))
  const reset: Lines = []
  const onLoad: Lines = []
  const onTick: Lines = []
  const functions: Record<string, Lines> = {}
  const files: Record<string, Lines> = {}

  Object.assign(data.npc.npcs, item.store.npc);

  functions['npc/init_dialogue'] = [];
  functions['npc/speaking'] = [];
  functions['npc/loadchunks'] = [];

  for (const [id, dat] of Object.entries(data.npc.npcs)) {
    const result = createNpc(namespace, id, dat)
    // The empty string is to have an empty between each entry
    reset.push('', result.reset)
    onLoad.push('', result.onLoad)
    functions['npc/init_dialogue'].push(result.initDialogue);
    functions['npc/speaking'].push(result.speaking);
    functions['npc/loadchunks'].push(`forceload add ${result.loadpos[0]} ${result.loadpos[1]}`);
    Object.assign(functions, result.functions)
  }

  // show dialogue particle
  schedule(Object.entries(data.npc.npcs).map(([k, v]) => (v.dialogue || []).map(x=>`execute as @e[type=villager,tag=npc-${k},scores={dialogue-status=${x.cond}},tag=!speaking,tag=!invisible] at @s anchored eyes run particle minecraft:happy_villager ^ ^0.5 ^ 0 0 0 0 1 force`)), 50, functions);

  onTick.push([
    'execute as @e[tag=npc, tag=selected_npc, tag=!speaking] run function generated:npc/init_dialogue',
    'execute as @e[tag=npc, tag=speaking, tag=!npc-unface] at @s run function generated:npc/speaking'
  ])

  functions['npc/init_dialogue'].push(
    `tag @s remove selected_npc`
  )

  let questCount = 0;

  for (const [id, dat] of Object.entries(data.quest)) {
    const result = createQuest(namespace, questCount++, id, dat)
    // The empty string is to have an empty between each entry
    reset.push('', result.reset)
    onLoad.push('', result.onLoad)
    onTick.push('', result.onTick)
    Object.assign(functions, result.functions)
  }

  // ensureDir expects an absolute path rather than a file:// URL
  await ensureDir(join(basePath, `./data/${namespace}/functions/`))

  schedule([
    '# update quest books',
    `title @a[scores={quest-book-upd=-1}] actionbar ${JSON.stringify([
      {
        text: "[",
        color: "light_purple",
        hoverEvent: {
          action: "show_item",
          value: toSnbt(item.quest_book)
        },
        extra: [
          {
            text: "Quest Book",
            italic: true
          },
          "]"
        ]
      },
      {
        color: "white",
        text: " updated. Open it to view changes!"
      }
    ])}`,
    `scoreboard players set @a[scores={quest-book-upd=-1}] quest-book-upd 0`
  ], 5, functions);

  schedule([
    "# make names visible only in range",
    `execute as @e[tag=npc] run data modify entity @s CustomNameVisible set value 0`,
    `execute at @a as @e[tag=npc,distance=..10] run data modify entity @s CustomNameVisible set value 1`,
    '# update entities with special tags',
    'execute as @e[type=villager,tag=baby] run data modify entity @s Age set value -30',
    'effect give @e[tag=invisible] minecraft:invisibility 2 0 true'
  ], 20, functions);

  schedule([
    `execute as @e[tag=item_holder] run data modify entity @s Fire set value 32767s`,
    `execute as @e[tag=checkpoint-marker] run data modify entity @s Fire set value 32767s`
  ], 32766, functions); // keep all armor stands lit

  schedule([
    `# prevent death of thrown quest books`,
    `execute as @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{title: "Quest Book"}}},nbt=!{Age:-32768}] run data modify entity @s Age set value -32768`
  ], 5999, functions);

  schedule([
    '# Keep permanent falling blocks',
    'execute as @e[tag=falling-block-display,type=falling_block] run data modify entity @s Time set value 1'
  ], 99, functions)

  schedule('execute as @e[type=area_effect_cloud,tag=aec] run data modify entity @s Duration set value 2147483647', 2147483646, functions);

  let CONSTANTS = {
    max: 2147483647,
    min: -2147483648
  }

  let numericConstants: Set<number> = new Set();

  for (let i = -1000; i <= 1000; i++) {
    numericConstants.add(i); // -1000 to 1000
    numericConstants.add(1000*i); // -1M to 1M in increments of 1k
  }
  for (let i = 0; i <= 9; i++) numericConstants.add(Math.pow(10,i)) // add powers of 10 to 1 billion
  for (let i = 0; i <= 30; i++) numericConstants.add(Math.pow(2,i)) // add powers of 2 to 2^30

  CONSTANTS = Object.assign(CONSTANTS, Object.fromEntries([...numericConstants].map(x=>[x,x])))

  story(files, functions, reset, onLoad, onTick);

  await Deno.writeTextFile(
    join(basePath, `./data/${namespace}/functions/reset.mcfunction`),
    lines(
      `# Reset schedules`,
      Array.from(scheduled_rates).map((x)=>([
        `schedule clear generated:scheduled/s-${x}`,
        `function generated:scheduled/s-${x}`
      ])),
      '# Kill all existing NPCs.',
      'kill @e[tag=npc]',
      '',
      '# Clear quest book from all players.',
      `data modify storage generated:quest_book current set value ${JSON.stringify(Array(questCount).fill(""))}`,
      `data modify storage generated:quest_book completed set value ${JSON.stringify(Array(questCount).fill(""))}`,
      'clear @a minecraft:written_book{title:"Quest Book"}',
      `scoreboard objectives remove quest-book-upd`,
      `scoreboard objectives add quest-book-upd dummy`,
      ``,
      `# Update lecterns in library`,
      'setblock 884 65 16 air',
      `setblock 884 65 16 minecraft:lectern[facing=west,has_book=true]${toSnbt({
        Page: 0,
        Book: Object.assign({Count:'1b'}, item.books.tomsawyer)
      })}`,
      'setblock 876 65 16 air',
      `setblock 876 65 16 minecraft:lectern[facing=east,has_book=true]${toSnbt({
        Page: 0,
        Book: Object.assign({Count:'1b'}, item.books["1984"])
      })}`,
      ``,
      `# Update lecterns elsewhere`,
      'setblock 1026 65 -52 air',
      `setblock 1026 65 -52 minecraft:lectern[facing=north,has_book=true]${toSnbt({
        Page: 0,
        Book: Object.assign({Count:'1b'}, item.books.mcguide)
      })}`,
      'setblock 1021 65 -44 air',
      `setblock 1021 65 -44 minecraft:lectern[facing=south,has_book=true]${toSnbt({
        Page: 0,
        Book: Object.assign({Count:'1b'}, item.books.blank)
      })}`,
      `# KILL EXISTING ITEM HOLDERS`,
      `kill @e[tag=item_holder]`,
      Object.entries(data.itemphysics).map(([k, v])=>{
        let data: Lines;
        if (k in cache.itemphysics && v.forcebuild == false) {
          data = cache.itemphysics[k];
        } else {
          data = generate_pile(v);
          cache.itemphysics[k] = data;
        }
        return ['# ITEM PHYSICS', ...data];
      }),
      Object.entries(data.shelves).map(([k, v])=>{
        let data: Lines;
        if (k in cache.shelves && v.forcebuild == false) {
          data = cache.shelves[k];
        } else {
          data = populate_shelf(v);
          cache.shelves[k] = data;
        }
        return ['# SHELVES', ...data];
      }),
      // Object.values(item.money).map(x=>`give @a ${toGive(x, 64)}`),
      reset
    )
  )

  await Deno.writeTextFile(
    join(basePath, `./data/${namespace}/functions/load.mcfunction`),
    lines(
      '# Stop all conversations, if possible.',
      `tag @a remove spoken-to`,
      `tag @e[tag=npc] remove speaking`,
      '',
      '# Villager interaction detection',
      `scoreboard objectives add npc-interact minecraft.custom:minecraft.talked_to_villager`,
      `scoreboard objectives add dialogue-status dummy`,
      '',
      '',
      '# Quest scoreboard setup',
      'scoreboard objectives add quest-status dummy',
      'scoreboard objectives add quest-status-old dummy',
      '',
      `# set up quest book`,
      `scoreboard objectives add quest-book-upd dummy`,
      '',
      '# SET UP CONSTS',
      `scoreboard objectives add const dummy`,
      (()=> Object.entries(CONSTANTS).map(x=>`scoreboard players set ${x[0]} const ${x[1]}`))(),
      '',
      '# SET UP VARIABLES',
      `scoreboard objectives add vars dummy`,
      `scoreboard objectives add change dummy`,
      '',
      `# SET UP ITEM DETECTION`,
      `scoreboard objectives add idetect dummy`,
      [...Array(Math.ceil(Object.keys(CONSTS.slots).length / 31)).keys()].map(x=>
        `scoreboard objectives add i${x}detect dummy`
      ),
      '',
      `# SET UP BITWISE OPERATORS`,
      `scoreboard objectives add bitwise dummy`,
      onLoad
    )
  )

  await Deno.writeTextFile(
    join(basePath, `./data/${namespace}/functions/tick.mcfunction`),
    lines(
      '# update variables',
      `scoreboard players set playercount vars 0`,
      `execute as @a run scoreboard players add playercount vars 1`,
      '# NPC dialogue',
      `# Detect right clicks`,
      `execute as @a[scores={npc-interact=1..},tag=!spoken-to] run function generated:npc/detect_interact`,
      `scoreboard players set @a npc-interact 0`,
      '',
      `execute as @a if score - quest-book-upd matches 1 unless score @s quest-book-upd matches -2147483648.. run give @s ${toGive(item.quest_book)}`,
      `execute if score - quest-book-upd matches 1 run scoreboard players add @a quest-book-upd 0`,
      `execute as @a[scores={quest-book-upd=0},nbt={SelectedItem:{id:"minecraft:written_book",tag:{title: "Quest Book"}}}] store result score @s quest-book-upd run item modify entity @s weapon.mainhand generated:update_quest_book`,
      `execute as @a[scores={quest-book-upd=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:written_book",tag:{title: "Quest Book"}}]}] store result score @s quest-book-upd run item modify entity @s weapon.offhand generated:update_quest_book`,
      '',
      onTick)
  )


  //generate helper functions

  //tag npcs player looks towards
  functions[`npc/detect_interact`] = [
    `scoreboard players set -detect-count npc-interact 0`,
    `execute at @s anchored eyes run function generated:npc/_detect_interact`,
    // `effect give @e[tag=player_facing_npc] glowing 1 0 true`,
    `tag @e remove player_facing_npc`,
    `execute if entity @e[tag=selected_npc] run tag @s add npc_selector`,
  ]

  functions[`npc/_detect_interact`] = (():string[] => {
    const factor = 3/data.npc.params.facing_res;
    const radii = factor*data.npc.params.leniency;
    let cmds: string[] = [];

    for (let i = Math.ceil(1.9/factor); i >= 0; i--) {
      cmds.push(`execute unless entity @e[tag=player_facing_npc] positioned ~ ~${-i*factor} ~ run tag @e[tag=npc,type=villager,distance=..${radii}] add player_facing_npc`);
      // cmds.push(`execute positioned ~ ~${-i*factor} ~ run particle dust 1 0 0 1 ~ ~ ~`);
    }

    return [
      ...cmds,
      `scoreboard players add -detect-count npc-interact 1`,
      `tag @e[tag=player_facing_npc,sort=nearest,limit=1] add selected_npc`,
      `execute if score -detect-count npc-interact matches ..${data.npc.params.facing_res} unless entity @e[tag=player_facing_npc] rotated ~ ~ positioned ^ ^ ^${factor} run function generated:npc/_detect_interact`,
    ]
  })();

  // change generating functions
  let ientries = Object.entries(item.money);

  functions[`change/count`] = [ // count the amount of cash at a position
    `scoreboard players set count change 0`,
    `scoreboard objectives add change-count-tmp dummy`,
    ientries.map(([val, item])=>[
      `scoreboard players set val change-count-tmp ${val}`,
      `execute as @e[type=item,nbt={Item:${toSnbt(item)}},distance=..1] run function generated:change/count_single`
    ]),
    `scoreboard objectives remove change-count-tmp`
  ]

  functions[`change/decrement`] = [ // pay for the amount specified in dec change
    `execute positioned ~ ~ ~ run function generated:change/count`,
    `scoreboard players set dec-success change 0`,
    `execute positioned ~ ~ ~ if score dec change <= count change run function generated:change/dec/root`
  ]

  functions[`change/generate`] = [ // generate amount specified in gen change
    `execute positioned ~ ~ ~ run function generated:change/count`,
    `scoreboard players set gen-success change 0`,
    `execute positioned ~ ~ ~ run function generated:change/gen/root`
  ]

  functions[`change/gen/root`] = [
    ientries.sort((a,b)=>(parseInt(b[0])-parseInt(a[0]))).map(([val, item])=>{ // generate change from large to small denominations
      functions[`change/gen/g-${val}`] = [
        `scoreboard players remove gen change ${val}`,
        `scoreboard players add count change ${val}`,
        `summon item ~ ~ ~ {Item:${toSnbt(Object.assign({Count:'1b'}, item))},Age:0,PickupDelay:0}`,
        `execute positioned ~ ~ ~ if score gen change matches ${val}.. run function generated:change/gen/g-${val}`
      ]

      return `execute positioned ~ ~ ~ if score gen change matches ${val}.. run function generated:change/gen/g-${val}`
    })
  ]

  functions[`change/dec/root`] = [ // pay for the amount specified in dec change
    ientries.sort((a,b)=>(parseInt(b[0])-parseInt(a[0]))).map(([val, item])=>{
      let itemsel = `@e[type=item,nbt={Item:${toSnbt(item)}},distance=..1,limit=1]`

      functions[`change/dec/d-${val}`] = [
        `scoreboard players remove dec change ${val}`,
        `scoreboard players remove count change ${val}`,
        `execute as ${itemsel} run function generated:change/dec/dec-self`,
        `execute positioned ~ ~ ~ if score dec change matches ${val}.. if entity ${itemsel} run function generated:change/dec/d-${val}`
      ]

      return `execute positioned ~ ~ ~ if score dec change matches ${val}.. if entity ${itemsel} run function generated:change/dec/d-${val}`
    }),
    ientries.sort((a,b)=>(parseInt(a[0])-parseInt(b[0]))).map( // in case we can't get the exact value, allow it to overcharge a little (and generate change later)
      ([val, item])=>`execute positioned ~ ~ ~ if score dec change > 0 const if entity @e[type=item,nbt={Item:${toSnbt(item)}},distance=..1,limit=1] run function generated:change/dec/d-${val}`
    ),
    `execute if score dec change < 0 const run scoreboard players operation gen change = dec change`,
    `execute if score dec change < 0 const run scoreboard players operation gen change *= -1 const`,
    `execute if score dec change < 0 const positioned ~ ~ ~ run function generated:change/generate`,
    `scoreboard players set dec change 0`,
    `scoreboard players set dec-success change 1`
  ]

  functions[`change/dec/dec-self`] = [
    `kill @s[nbt={Item:{Count:1b}}]`, // kill self at count 1
    `execute as @s run function generated:change/dec/_dec-self`
  ]

  functions[`change/dec/_dec-self`] = [
    `execute store result score @s change run data get entity @s Item.Count`,
    `scoreboard players remove @s change 1`,
    `execute store result entity @s Item.Count byte 1 run scoreboard players get @s change`,
    `scoreboard players reset @s change`
  ]

  functions[`change/count_single`] = [
    `execute store result score @s change-count-tmp run data get entity @s Item.Count`,
    `scoreboard players operation @s change-count-tmp *= val change-count-tmp`,
    `scoreboard players operation count change += @s change-count-tmp`
  ]

  // bitwise operators
  functions[`bitwise/and`] = [
    'scoreboard players operation _l bitwise = l bitwise',
    'scoreboard players operation _r bitwise = r bitwise',
    'scoreboard players set result bitwise 0',
    [...Array(31).keys()].map(x=>1 << (30-x)).map(x=>[
      `execute if score _l bitwise matches ${x}.. if score _r bitwise matches ${x}.. run scoreboard players add result bitwise ${x}`,
      x === 1 ? [] : [
        `scoreboard players operation _l bitwise %= ${x} const`,
        `scoreboard players operation _r bitwise %= ${x} const`
      ]
    ])
  ]

  functions['test/givebook'] = `give @a ${toGive(item.quest_book)}`;

  Object.entries(item.books).map(([k, v]: [string, any])=>{
    functions[`test/book/${k}`] = `give @s ${toGive(v)}`;
  })

  functions['rng/rng'] = [
    '# generate random number from 0 to 2^31-1 (mod m)',
    `scoreboard players set rng vars 0`,
    [...Array(31).keys()].map(x=>1 << x).map(x=>
      `execute if predicate generated:coinflip run scoreboard players add rng vars ${x}`
    ),
    `execute if score _rngm vars matches 1.. run scoreboard players operation rng vars %= _rngm vars`
  ]

  for (const [name, contents] of Object.entries(functions)) {
    await ensureDir(join(basePath, `./data/${namespace}/functions/`, dirname(name)))
    await Deno.writeTextFile(
      join(basePath, `./data/${namespace}/functions/`, `${name}.mcfunction`),
      lines(contents)
    )
  }

  for (const [name, contents] of Object.entries(files)) {
    await ensureDir(join(basePath, `./data/${namespace}/`, dirname(name)))
    await Deno.writeTextFile(
      join(basePath, `./data/${namespace}/`, `${name}`),
      lines(contents)
    )
  }

  // item modifiers
  await ensureDir(join(basePath, `./data/${namespace}/item_modifiers`))

  await Deno.writeTextFile(
    join(basePath, `./data/${namespace}/item_modifiers/update_quest_book.json`),
    JSON.stringify(
      {
        function: "set_nbt",
        tag: toSnbt(item.quest_book.tag)
      }
    )
  )

  await Deno.writeTextFile(
    join(basePath, `./data/${namespace}/item_modifiers/allow_buildtool.json`),
    JSON.stringify(
      {
        function: "set_nbt",
        tag: toSnbt({
          CanPlaceOn:`["air","ice","tnt","bell","cake","clay","dirt","fern","fire","kelp","lava","loom","rail","sand","snow","tuff","anvil","chain","chest","cocoa","glass","grass","lever","light","lilac","melon","peony","poppy","stone","vine","water","allium","azalea","bamboo","barrel","basalt","beacon","bricks","cactus","candle","cobweb","gravel","hopper","ladder","piston","podzol","smoker","sponge","target","barrier","bedrock","beehive","calcite","carrots","conduit","diorite","dropper","end_rod","furnace","granite","jukebox","lantern","lectern","oak_log","pumpkin","red_bed","spawner","andesite","bee_nest","blue_bed","blue_ice","campfire","cauldron","cave_air","coal_ore","cyan_bed","farmland","gold_ore","gray_bed","hay_block","iron_ore","lily_pad","lime_bed","mycelium","oak_door","oak_sign","oak_slab","oak_wood","observer","obsidian","pink_bed","potatoes","red_sand","red_wool","seagrass","tripwire","void_air","beetroots","birch_log","black_bed","blue_wool","bookshelf","brown_bed","composter","cyan_wool","dandelion","dead_bush","deepslate","dirt_path","dispenser","end_stone","glowstone","gray_wool","green_bed","iron_bars","iron_door","lime_wool","lodestone","oak_fence","pink_wool","red_tulip","rose_bush","sandstone","soul_sand","soul_soil","sunflower","white_bed","acacia_log","birch_door","birch_sign","birch_slab","birch_wood","black_wool","blackstone","bone_block","brick_slab","brick_wall","brown_wool","cave_vines","copper_ore","cornflower","cut_copper","dragon_egg","end_portal","fire_coral","flower_pot","glass_pane","green_wool","grindstone","horn_coral","jungle_log","large_fern","melon_stem","moss_block","netherrack","note_block","oak_button","oak_leaves","oak_planks","oak_stairs","orange_bed","packed_ice","pink_tulip","prismarine","purple_bed","red_banner","red_wall_banner","red_candle","red_carpet","sea_pickle","snow_block","soul_torch","spruce_log","stone_slab","sugar_cane","tall_grass","terracotta","tube_coral","turtle_egg","wall_torch","wet_sponge","white_wool","yellow_bed","acacia_door","acacia_sign","acacia_slab","acacia_wood","azure_bluet","birch_fence","blue_banner","blue_wall_banner","blue_candle","blue_carpet","blue_orchid","brain_coral","coarse_dirt","cobblestone","cyan_banner","cyan_wall_banner","cyan_candle","cyan_carpet","diamond_ore","dragon_head","emerald_ore","end_gateway","ender_chest","frosted_ice","glow_lichen","grass_block","gray_banner","gray_wall_banner","gray_candle","gray_carpet","honey_block","jungle_door","jungle_sign","jungle_slab","jungle_wood","lime_banner","lime_wall_banner","lime_candle","lime_carpet","magenta_bed","magma_block","moss_carpet","nether_wart","oak_sapling","orange_wool","oxeye_daisy","pink_banner","pink_wall_banner","pink_candle","pink_carpet","piston_head","player_head","potted_fern","powder_snow","purple_wool","purpur_slab","quartz_slab","rooted_dirt","scaffolding","sea_lantern","shroomlight","shulker_box","slime_block","spruce_door","spruce_sign","spruce_slab","spruce_wood","stonecutter","warped_door","warped_sign","warped_slab","warped_stem","wheat","white_tulip","wither_rose","yellow_wool","zombie_head","acacia_fence","bamboo_sapling","big_dripleaf","birch_button","birch_leaves","birch_planks","birch_stairs","black_banner","black_wall_banner","black_candle","black_carpet","brick_stairs","brown_banner","brown_wall_banner","brown_candle","brown_carpet","bubble_coral","chorus_plant","creeper_head","crimson_door","crimson_sign","crimson_slab","crimson_stem","dark_oak_log","diorite_slab","diorite_wall","granite_slab","granite_wall","green_banner","green_wall_banner","green_candle","green_carpet","jigsaw","jungle_fence","magenta_wool","oak_trapdoor","orange_tulip","potted_poppy","powered_rail","pumpkin_stem","purpur_block","red_concrete","red_mushroom","redstone_ore","sculk_sensor","smooth_stone","soul_lantern","spruce_fence","stone_bricks","stone_button","stone_stairs","tinted_glass","warped_fence","warped_roots","white_banner","white_wall_banner","white_candle","white_carpet","acacia_button","acacia_leaves","acacia_planks","acacia_stairs","andesite_slab","andesite_wall","azalea_leaves","birch_sapling","blast_furnace","coal_block","gold_block","iron_block","blue_concrete","brewing_stand","chipped_anvil","chorus_flower","command_block","crimson_fence","crimson_roots","cut_sandstone","cyan_concrete","damaged_anvil","dark_oak_door","dark_oak_sign","dark_oak_slab","dark_oak_wood","detector_rail","gray_concrete","hanging_roots","iron_trapdoor","jungle_button","jungle_leaves","jungle_planks","jungle_stairs","lava_cauldron","lightning_rod","lime_concrete","moving_piston","mushroom_stem","nether_bricks","nether_portal","oak_wall_sign","orange_banner","orange_wall_banner","orange_candle","orange_carpet","pink_concrete","potted_allium","potted_azalea_bush","potted_bamboo","potted_cactus","purple_banner","purple_wall_banner","purple_candle","purple_carpet","purpur_pillar","purpur_stairs","quartz_bricks","quartz_pillar","quartz_stairs","red_sandstone","redstone_lamp","redstone_wire","smooth_basalt","soul_campfire","spore_blossom","spruce_button","spruce_leaves","spruce_planks","spruce_stairs","sticky_piston","trapped_chest","tripwire_hook","warped_button","warped_fungus","warped_hyphae","warped_nylium","warped_planks","warped_stairs","weeping_vines","yellow_banner","yellow_wall_banner","yellow_candle","yellow_carpet","acacia_sapling","activator_rail","ancient_debris","birch_trapdoor","black_concrete","brown_concrete","brown_mushroom","carved_pumpkin","crafting_table","crimson_button","crimson_fungus","crimson_hyphae","crimson_nylium","crimson_planks","crimson_stairs","dark_oak_fence","diorite_stairs","exposed_copper","fire_coral_fan","granite_stairs","green_concrete","horn_coral_fan","infested_stone","jack_o_lantern","jungle_sapling","light_blue_bed","light_gray_bed","magenta_banner","magenta_wall_banner","magenta_candle","magenta_carpet","nether_sprouts","oak_fence_gate","red_terracotta","respawn_anchor","sandstone_slab","sandstone_wall","skeleton_skull","small_dripleaf","smithing_table","spruce_sapling","structure_void","tube_coral_fan","twisting_vines","water_cauldron","white_concrete","acacia_trapdoor","andesite_stairs","birch_wall_sign","blackstone_slab","blackstone_wall","copper_block","quartz_block","blue_terracotta","brain_coral_fan","crying_obsidian","cut_copper_slab","cyan_terracotta","dark_oak_button","dark_oak_leaves","dark_oak_planks","dark_oak_stairs","dark_prismarine","dead_fire_coral","dead_horn_coral","dead_tube_coral","deepslate_tiles","dripstone_block","fletching_table","gray_terracotta","honeycomb_block","jungle_trapdoor","light_blue_wool","light_gray_wool","lime_terracotta","nether_gold_ore","orange_concrete","oxidized_copper","pink_terracotta","polished_basalt","prismarine_slab","prismarine_wall","purple_concrete","red_shulker_box","spruce_trapdoor","structure_block","warped_trapdoor","yellow_concrete","acacia_wall_sign","amethyst_cluster","birch_fence_gate","black_terracotta","diamond_block","emerald_block","blue_shulker_box","brown_terracotta","bubble_coral_fan","budding_amethyst","candle_cake","cave_vines_plant","cobblestone_slab","cobblestone_wall","crimson_trapdoor","cyan_shulker_box","dark_oak_sapling","dead_brain_coral","deepslate_bricks","dragon_wall_head","dried_kelp_block","enchanting_table","end_portal_frame","end_stone_bricks","fire_coral_block","flowering_azalea","gray_shulker_box","green_terracotta","horn_coral_block","jungle_wall_sign","lapis_ore","lime_shulker_box","magenta_concrete","pink_shulker_box","player_wall_head","polished_diorite","polished_granite","potted_dandelion","potted_dead_bush","potted_red_tulip","sandstone_stairs","smooth_sandstone","spruce_wall_sign","stone_brick_slab","stone_brick_wall","stripped_oak_log","sweet_berry_bush","tube_coral_block","warped_wall_sign","waxed_cut_copper","weathered_copper","white_terracotta","zombie_wall_head","acacia_fence_gate","big_dripleaf_stem","black_shulker_box","blackstone_stairs","amethyst_block","raw_gold_block","raw_iron_block","redstone_block","brain_coral_block","brown_shulker_box","cartography_table","cobbled_deepslate","creeper_wall_head","crimson_wall_sign","cut_copper_stairs","cut_red_sandstone","dark_oak_trapdoor","daylight_detector","dead_bubble_coral","gilded_blackstone","green_shulker_box","jungle_fence_gate","light_blue_banner","light_blue_wall_banner","light_blue_candle","light_blue_carpet","light_gray_banner","light_gray_wall_banner","light_gray_candle","light_gray_carpet","mossy_cobblestone","nether_brick_slab","nether_brick_wall","nether_quartz_ore","nether_wart_block","orange_terracotta","pointed_dripstone","polished_andesite","potted_pink_tulip","prismarine_bricks","prismarine_stairs","purple_terracotta","red_nether_bricks","red_stained_glass","repeater","smooth_stone_slab","spruce_fence_gate","stripped_oak_wood","warped_fence_gate","warped_wart_block","white_shulker_box","yellow_terracotta","netherite_block","blue_stained_glass","bubble_coral_block","chiseled_deepslate","chiseled_sandstone","cobblestone_stairs","crimson_fence_gate","cut_sandstone_slab","cyan_stained_glass","dark_oak_wall_sign","deepslate_coal_ore","deepslate_gold_ore","deepslate_iron_ore","exposed_cut_copper","gray_stained_glass","infested_deepslate","large_amethyst_bud","lily_of_the_valley","lime_stained_glass","magenta_terracotta","mossy_stone_bricks","nether_brick_fence","oak_pressure_plate","orange_shulker_box","petrified_oak_slab","pink_stained_glass","polished_deepslate","potted_azure_bluet","potted_blue_orchid","potted_oak_sapling","potted_oxeye_daisy","potted_white_tulip","purple_shulker_box","red_mushroom_block","red_sandstone_slab","red_sandstone_wall","small_amethyst_bud","smooth_quartz_slab","stone_brick_stairs","stripped_birch_log","yellow_shulker_box","attached_melon_stem","black_stained_glass","raw_copper_block","brown_stained_glass","chain_command_block","dark_oak_fence_gate","dead_fire_coral_fan","dead_horn_coral_fan","dead_tube_coral_fan","deepslate_tile_slab","deepslate_tile_wall","fire_coral_wall_fan","green_stained_glass","horn_coral_wall_fan","light_blue_concrete","light_gray_concrete","magenta_shulker_box","medium_amethyst_bud","nether_brick_stairs","oxidized_cut_copper","polished_blackstone","potted_orange_tulip","potted_red_mushroom","potted_warped_roots","red_concrete_powder","comparator","redstone_wall_torch","skeleton_wall_skull","smooth_quartz","stripped_acacia_log","stripped_birch_wood","stripped_jungle_log","stripped_spruce_log","tube_coral_wall_fan","weeping_vines_plant","white_stained_glass","birch_pressure_plate","blue_concrete_powder","brain_coral_wall_fan","brown_mushroom_block","red_candle_cake","cracked_stone_bricks","cyan_concrete_powder","dark_prismarine_slab","dead_brain_coral_fan","deepslate_brick_slab","deepslate_brick_wall","deepslate_copper_ore","end_stone_brick_slab","end_stone_brick_wall","gray_concrete_powder","infested_cobblestone","lime_concrete_powder","orange_stained_glass","pink_concrete_powder","potted_birch_sapling","potted_crimson_roots","potted_warped_fungus","powder_snow_cauldron","purple_stained_glass","red_sandstone_stairs","smooth_quartz_stairs","smooth_red_sandstone","stone_pressure_plate","stripped_acacia_wood","stripped_jungle_wood","stripped_spruce_wood","stripped_warped_stem","twisting_vines_plant","waxed_exposed_copper","weathered_cut_copper","yellow_stained_glass","acacia_pressure_plate","attached_pumpkin_stem","black_concrete_powder","lapis_block","brown_concrete_powder","bubble_coral_wall_fan","blue_candle_cake","cyan_candle_cake","gray_candle_cake","lime_candle_cake","pink_candle_cake","chiseled_quartz_block","chiseled_stone_bricks","cracked_nether_bricks","dead_bubble_coral_fan","dead_fire_coral_block","dead_horn_coral_block","dead_tube_coral_block","deepslate_diamond_ore","deepslate_emerald_ore","deepslate_tile_stairs","green_concrete_powder","infested_stone_bricks","jungle_pressure_plate","light_blue_terracotta","light_gray_terracotta","magenta_stained_glass","polished_diorite_slab","polished_granite_slab","potted_acacia_sapling","potted_brown_mushroom","potted_crimson_fungus","potted_jungle_sapling","potted_spruce_sapling","prismarine_brick_slab","red_glazed_terracotta","red_nether_brick_slab","red_nether_brick_wall","smooth_sandstone_slab","spruce_pressure_plate","stripped_crimson_stem","stripped_dark_oak_log","warped_pressure_plate","waxed_copper_block","waxed_cut_copper_slab","waxed_oxidized_copper","white_concrete_powder","wither_skeleton_skull","blue_glazed_terracotta","black_candle_cake","brown_candle_cake","green_candle_cake","white_candle_cake","chiseled_nether_bricks","chiseled_red_sandstone","cobbled_deepslate_slab","cobbled_deepslate_wall","crimson_pressure_plate","cut_red_sandstone_slab","cyan_glazed_terracotta","dark_prismarine_stairs","dead_brain_coral_block","deepslate_brick_stairs","deepslate_redstone_ore","end_stone_brick_stairs","gray_glazed_terracotta","light_blue_shulker_box","light_gray_shulker_box","lime_glazed_terracotta","mossy_cobblestone_slab","mossy_cobblestone_wall","mossy_stone_brick_slab","mossy_stone_brick_wall","orange_concrete_powder","pink_glazed_terracotta","polished_andesite_slab","purple_concrete_powder","red_stained_glass_pane","stripped_dark_oak_wood","stripped_warped_hyphae","waxed_weathered_copper","yellow_concrete_powder","black_glazed_terracotta","blue_stained_glass_pane","brown_glazed_terracotta","orange_candle_cake","purple_candle_cake","yellow_candle_cake","cracked_deepslate_tiles","cyan_stained_glass_pane","dark_oak_pressure_plate","dead_bubble_coral_block","exposed_cut_copper_slab","flowering_azalea_leaves","gray_stained_glass_pane","green_glazed_terracotta","lime_stained_glass_pane","magenta_concrete_powder","pink_stained_glass_pane","polished_deepslate_slab","polished_deepslate_wall","polished_diorite_stairs","polished_granite_stairs","potted_dark_oak_sapling","potted_flowering_azalea_bush","prismarine_brick_stairs","red_nether_brick_stairs","repeating_command_block","smooth_sandstone_stairs","stripped_crimson_hyphae","waxed_cut_copper_stairs","white_glazed_terracotta","black_stained_glass_pane","brown_stained_glass_pane","magenta_candle_cake","cobbled_deepslate_stairs","cracked_deepslate_bricks","dead_fire_coral_wall_fan","dead_horn_coral_wall_fan","dead_tube_coral_wall_fan","green_stained_glass_pane","light_blue_stained_glass","light_gray_stained_glass","mossy_cobblestone_stairs","mossy_stone_brick_stairs","orange_glazed_terracotta","oxidized_cut_copper_slab","polished_andesite_stairs","polished_blackstone_slab","polished_blackstone_wall","waxed_exposed_cut_copper","white_stained_glass_pane","yellow_glazed_terracotta","dead_brain_coral_wall_fan","exposed_cut_copper_stairs","magenta_glazed_terracotta","orange_stained_glass_pane","polished_deepslate_stairs","purple_stained_glass_pane","smooth_red_sandstone_slab","waxed_oxidized_cut_copper","weathered_cut_copper_slab","yellow_stained_glass_pane","dead_bubble_coral_wall_fan","deepslate_lapis_ore","light_blue_concrete_powder","light_gray_concrete_powder","magenta_stained_glass_pane","oxidized_cut_copper_stairs","polished_blackstone_bricks","polished_blackstone_button","polished_blackstone_stairs","waxed_weathered_cut_copper","wither_skeleton_wall_skull","light_blue_candle_cake","light_gray_candle_cake","infested_mossy_stone_bricks","smooth_red_sandstone_stairs","weathered_cut_copper_stairs","chiseled_polished_blackstone","light_blue_glazed_terracotta","light_gray_glazed_terracotta","heavy_weighted_pressure_plate","infested_cracked_stone_bricks","light_blue_stained_glass_pane","light_gray_stained_glass_pane","light_weighted_pressure_plate","waxed_exposed_cut_copper_slab","infested_chiseled_stone_bricks","polished_blackstone_brick_slab","polished_blackstone_brick_wall","waxed_oxidized_cut_copper_slab","waxed_exposed_cut_copper_stairs","waxed_weathered_cut_copper_slab","polished_blackstone_brick_stairs","waxed_oxidized_cut_copper_stairs","waxed_weathered_cut_copper_stairs","cracked_polished_blackstone_bricks","polished_blackstone_pressure_plate"]`
        })
      }
    )
  )

  await Deno.writeTextFile(
    join(basePath, `./data/${namespace}/item_modifiers/disallow_build.json`),
    JSON.stringify(
      {
        function: "set_nbt",
        tag: toSnbt({
          CanPlaceOn:`[]`
        })
      }
    )
  )

  await Deno.writeTextFile(
    join(basePath, `./data/${namespace}/item_modifiers/disallow_mine.json`),
    JSON.stringify(
      {
        function: "set_nbt",
        tag: toSnbt({
          CanDestroy:`[]`
        })
      }
    )
  )

  // predicates
  await ensureDir(join(basePath, `./data/${namespace}/predicates`))

  await Deno.writeTextFile(
    join(basePath, `./data/${namespace}/predicates/coinflip.json`),
    JSON.stringify(
      {
        condition: "random_chance",
        chance: 0.5
      }
    )
  )

  await Deno.writeTextFile('./cache.json', JSON.stringify(cache))
}

if (import.meta.main) {
  // deno run --allow-all --no-check minecraft-npc/init.ts ./minecraft-npc/simpler.yml /mnt/c/Users/seant/AppData/Roaming/.minecraft/saves/test/datapacks/test-npc-ooga-booga/ -n test-npc -d "aafysfgyudgf goofie"
  const {
    namespace = 'generated',
    help,
    _: [yamlPath, pathToDatapackFolder]
  } = parseArgs(Deno.args, {
    string: ['namespace', 'description'],
    boolean: ['help'],
    alias: {
      n: 'namespace',
      d: 'description',
      h: 'help'
    }
  })
  if (help || !yamlPath || !pathToDatapackFolder) {
    console.log(
      'deno run --allow-write=./data/generated --allow-read=./ main.ts [path to yml file] [path to datapack folder] -n [namespace name] -d [description]'
    )
  } else {
    await init(String(yamlPath), String(pathToDatapackFolder), {
      namespace
    })
  }
}