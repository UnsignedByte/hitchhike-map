import { ensureDir, emptyDir } from 'https://deno.land/std@0.102.0/fs/mod.ts'
import { join } from 'https://deno.land/std@0.102.0/path/mod.ts'
import { parse as parseArgs } from 'https://deno.land/std@0.104.0/flags/mod.ts'
import { createNpc, createQuest, toSnbt, rawJson } from './compile-to-mcfunction.ts'
import { parse } from './parse-yaml.ts'

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

export async function init (
  yamlPath: string,
  basePath: string,
  { namespace = 'minecraft', description = 'Mysterious datapack' } = {}
): Promise<void> {
  const data = parse(await Deno.readTextFile(yamlPath))
  const reset: Lines = []
  const onLoad: Lines = [
    `# Summon quest book template entity`,
    'kill @e[tag=quest_book]',
    `data modify storage generated:quest_book pages set value [${rawJson({
          text: "Current Quests",
          color: "light_purple",
          underlined: true,
          bold: true
        }
       )}]`
  ]
  const onTick: Lines = [
    `# Detect right clicks`,
    `execute as @a[scores={npc-interact=1..},tag=!spoken-to] run function generated:player_facing_npc`,
    `scoreboard players set @a npc-interact 0`
  ]
  const functions: Record<string, Lines> = {}
  for (const [id, dat] of Object.entries(data.npc.npcs)) {
    const result = createNpc(namespace, id, dat)
    // The empty string is to have an empty between each entry
    reset.push('', result.reset)
    onLoad.push('', result.onLoad)
    onTick.push('', result.onTick)
    Object.assign(functions, result.functions)
  }

  for (const [id, dat] of Object.entries(data.quest)) {
    const result = createQuest(namespace, id, dat)
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
      '# Kill all existing NPCs.',
      'kill @e[type=minecraft:villager, tag=npc]',
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
      onLoad
    )
  )
  await Deno.writeTextFile(
    join(basePath, `./data/${namespace}/functions/tick.mcfunction`),
    lines('# NPC dialogue', onTick, `tag @a remove npc_selector`, `tag @e[tag=npc] remove selected_npc`)
  )
  await emptyDir(join(basePath, `./data/${namespace}/functions/dialoguefuncs/`))
  for (const [name, contents] of Object.entries(functions)) {
    await Deno.writeTextFile(
      join(basePath, `./data/${namespace}/functions/dialoguefuncs/${name}.mcfunction`),
      lines(contents)
    )
  }


  //generate helper functions

  await Deno.writeTextFile(
    join(basePath, `./data/${namespace}/functions/give_quest_book.mcfunction`),
    lines(
      '# Clear quest book from all players.',
      'clear @a minecraft:written_book{title:"Quest Book"}',
      '# Give new quest book',
      `give @a written_book${toSnbt({
        display: {
          Name: rawJson({
            text: "Quest Book",
            color: "light_purple",
            italic: true
          })
        },
        title: '"Quest Book"',
        author: '""',
        pages:`['{"nbt":"pages[]","storage":"generated:quest_book","interpret":true}']`
      })}}`
    )
  )

  //tag npcs player looks towards
  await Deno.writeTextFile(
    join(basePath, `./data/${namespace}/functions/player_facing_npc.mcfunction`),
    lines(
      ((): string[] =>{
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