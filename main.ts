import { ensureDir, emptyDir } from 'https://deno.land/std@0.102.0/fs/mod.ts'
import { join, dirname } from 'https://deno.land/std@0.102.0/path/mod.ts'
import { parse as parseArgs } from 'https://deno.land/std@0.104.0/flags/mod.ts'
import { createNpc, createQuest, toSnbt, rawJson, toGive } from './compile-to-mcfunction.ts'
import { parse } from './parse-yaml.ts'
import { item } from './item.ts'
import { generate_pile } from './armorstand-tools.ts'

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

export async function init (
  yamlPath: string,
  basePath: string,
  { namespace = 'minecraft', description = 'Mysterious datapack' } = {}
): Promise<void> {
  await emptyDir(join(basePath, `./data/${namespace}/`))
  const data = parse(await Deno.readTextFile(yamlPath))
  const reset: Lines = []
  const onLoad: Lines = []
  const onTick: Lines = []
  const functions: Record<string, Lines> = {}
  for (const [id, dat] of Object.entries(data.npc.npcs)) {
    const result = createNpc(namespace, id, dat)
    // The empty string is to have an empty between each entry
    reset.push('', result.reset)
    onLoad.push('', result.onLoad)
    onTick.push('', result.onTick)
    Object.assign(functions, result.functions)
  }

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

  await Deno.writeTextFile(
    join(basePath, `./data/${namespace}/functions/reset.mcfunction`),
    lines(
      `# Reset schedules`,
      Array.from(scheduled_rates).map((x)=>([
        `schedule clear scheduled/s-${x}`,
        `function scheduled/s-${x}`
      ])),
      '# Kill all existing NPCs.',
      'kill @e[type=minecraft:villager, tag=npc]',
      '',
      '# Clear quest book from all players.',
      'clear @a minecraft:written_book{title:"Quest Book"}',
      '# Give new quest book',
      `give @a ${toGive(item.quest_book)}`,
      Object.values(item.money).map(x=>`give @a ${toGive(x, 64)}`),
      reset
    )
  )

  let CONSTANTS = {
    max: 2147483647,
    min: -2147483648
  }

  let numericConstants: Set<number> = new Set();

  for (let i = -1; i <= 1000; i++) numericConstants.add(i)
  for (let i = 0; i <= 9; i++) numericConstants.add(Math.pow(10,i)) // add powers of 10 to 1 billion
  for (let i = 0; i <= 30; i++) numericConstants.add(Math.pow(2,i)) // add powers of 2 to 2^30

  CONSTANTS = Object.assign(CONSTANTS, Object.fromEntries([...numericConstants].map(x=>[x,x])))

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
      'kill @e[tag=quest_book]',
      `scoreboard objectives add quest-book-upd dummy`,
      `data modify storage generated:quest_book current set value ${JSON.stringify(Array(questCount).fill(""))}`,
      `data modify storage generated:quest_book completed set value ${JSON.stringify(Array(questCount).fill(""))}`,
      '',
      '# SET UP CONSTS',
      `scoreboard objectives add const dummy`,
      (()=> Object.entries(CONSTANTS).map(x=>`scoreboard players set ${x[0]} const ${x[1]}`))(),
      '',
      '# SET UP VARIABLES',
      `scoreboard objectives add vars dummy`,
      `scoreboard objectives add change dummy`,
      ``,
      `# KILL EXISTING ITEM HOLDERS`,
      `kill @e[tag=item_holder]`,
      data.itemphysics.map(x=>['', ...generate_pile(x)]),
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
      `execute as @a[scores={npc-interact=1..},tag=!spoken-to] run function generated:player_facing_npc`,
      `scoreboard players set @a npc-interact 0`,
      '',
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
      `scoreboard players set @a[scores={quest-book-upd=-1}] quest-book-upd 0`,
      `execute as @a[scores={quest-book-upd=0},nbt={SelectedItem:{id:"minecraft:written_book",tag:{title: "Quest Book"}}}] store result score @s quest-book-upd run item modify entity @s weapon.mainhand generated:update_quest_book`,
      `execute as @a[scores={quest-book-upd=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:written_book",tag:{title: "Quest Book"}}]}] store result score @s quest-book-upd run item modify entity @s weapon.offhand generated:update_quest_book`,
      onTick,
      `tag @a remove npc_selector`,
      `tag @e[tag=npc] remove selected_npc`)
  )


  //generate helper functions

  //tag npcs player looks towards
  functions[`player_facing_npc`] = ((): string[] =>{
    const factor = 3/data.npc.params.facing_res;
    let cmds: string[] = [];
    let td: number = 0;
    for(let i: number = data.npc.params.facing_res; i > 0; i--) {
      td+=factor;
      cmds.push(`execute at @s positioned ^ ^ ^${td} run tag @e[tag=npc,distance=..${factor}] add player_facing_npc`);
      cmds.push(`execute at @s positioned ^ ^ ^${td} positioned ~ ~1 ~ run tag @e[tag=npc,distance=..${factor}] add player_facing_npc`);
    }
    return [
      ...cmds,
      `execute at @s run tag @e[tag=player_facing_npc,sort=nearest,limit=1] add selected_npc`,
      `tag @e remove player_facing_npc`,
      `execute if entity @e[tag=selected_npc] run tag @s add npc_selector`
    ];
  })()

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

  for (const [name, contents] of Object.entries(functions)) {
    await ensureDir(join(basePath, `./data/${namespace}/functions/`, dirname(name)))
    await Deno.writeTextFile(
      join(basePath, `./data/${namespace}/functions/`, `${name}.mcfunction`),
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