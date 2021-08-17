import { Lines } from './main.ts'
import { Npc, Quest, QuestCondition } from './parse-yaml.ts'

type NbtValue = string | number | boolean | undefined | null;
type NbtData = {
  [key: string]: NbtValue | NbtData
}

export function toSnbt (nbt: NbtData): string {
  const values = []
  for (const [key, value] of Object.entries(nbt)) {
    if (value === undefined || value === null) continue
    values.push(
      `${key}: ${
        typeof value === 'string' || typeof value === 'number'
          ? value
          : typeof value === 'boolean'
          ? value
            ? '1b'
            : '0b'
          : toSnbt(value)
      }`
    )
  }
  return values.length ? `{${values.join(', ')}}` : '{}'
}

export function rawJson (json: unknown): string {
  return `'${JSON.stringify(json).replace(/['\\]/g, match =>
    match === "'" ? "\\'" : '\\\\'
  )}'`
}

export function createNpc (
  namespace: string,
  id: string,
  {
    name,
    colour,
    head,
    position: [x, y, z] = [0, 0, 0],
    rotation: [rx, ry] = [0,0],
    villager: {
      type = 'plains',
      profession = 'none',
      // Level 99 hides the villager level in the trading UI
      level = 99
    } = {},
    dialogue = []
  }: Npc
): {
  reset: Lines
  onLoad: Lines
  onTick: Lines
  functions: Record<string, Lines>
} {
  const npcTag = `npc-${id}`
  const playerTag = `victim-of-dialogue-by-${id}`
  // Prevent the dialogue from immediately restarting

  const START_DIST = 4
  const LEAVE_DIST = 10
  const HEAR_DIST = 25

  const select = {
    self: `@e[tag=${npcTag}, limit=1]`,
    selected: `@e[tag=${npcTag}, tag=selected_npc, tag=!speaking, limit=1]`,
    speaking: `@e[tag=${npcTag}, tag=speaking, limit=1]`,

    player: `@a[tag=${playerTag}, limit=1]`,
    newPlayer: `@a[tag=${playerTag}, tag=!spoken-to, limit=1]`,
    eavesdropper: `@a[distance=..${HEAR_DIST}]`
  }

  const functions: Record<string, Lines> = {}

  return {
    reset: [
      `# Summon the villager for ${id}.`,
      // Summon new villager
      `summon minecraft:villager ${x} ${y} ${z} ${toSnbt({
        Rotation: `[${rx}f, ${ry}f]`,
        Silent: true,
        Invulnerable: true,
        NoAI:true,
        NoGravity:true,
        CustomNameVisible: !!name,
        // `npc` tag is unused but might be nice to kill all NPCs
        Tags: `["npc", "${npcTag}"]`,
        CustomName: name
          ? rawJson({ text: name, color: colour, bold: true })
          : null,
        ArmorItems: head
          ? `[{}, {}, {}, ${toSnbt({
              id: '"minecraft:player_head"',
              Count: '1b',
              tag: {
                SkullOwner: {
                  // The Id can be 0, 0, 0, 0 (non-unique) apparently, even with
                  // different heads
                  Id: '[I; 0, 0, 0, 0]',
                  Properties: {
                    textures: `[{ Value: "${head}" }]`
                  }
                }
              }
            })}]`
          : null,
        VillagerData: {
          type: `"minecraft:${type}"`,
          profession: `"minecraft:${profession}"`,
          level: level
        },
        // `Offers` is empty to prevent trading
        Offers: '{}'
      })}`,
      `scoreboard players set @e[tag=npc] dialogue-status 0`
    ],
    onLoad: [
      // Reset conversations, if possible (player may be offline)
      `tag @a remove ${playerTag}`
    ],
    onTick: [
      "# Start a conversation if it was selected",
      // TODO: Consider `mark` and `if`
      `execute at ${select.selected} run tag @a[tag=npc_selector,sort=nearest,limit=1] add ${playerTag}`,
      `tag ${select.player} remove npc_selector`,
      `tag ${select.selected} add speaking`,

      dialogue.map((dialogue, idx) => {
        const indexToFuncName = (i: number) =>
          `npc/dialogue-${id}-${idx}-${i
            .toString()
            .padStart(String(dialogue.messages.length - 1).length, '0')}`
        for (const [i, message] of dialogue.messages.entries()) {
          message.message.map(msg => {
            if ('selector' in msg && (<string>msg.selector)[0] !== '@') msg.selector = <string>eval(<string>msg.selector);
            return msg
          });
          // # of vowels (≈ syllables) * 5 ticks/vowel
          const fulltext = message.message.map(x=>x.text || '').join("");
          const duration = (fulltext.match(/[aiueo]/gi)?.length ?? 0) * 5
          const broadcastTargets = message.global ? '@a' : select.eavesdropper;
          functions[`${indexToFuncName(i)}`] = [
            `# Dialogue line #${idx}-${i + 1}: speak and make noise.`,
            `execute at ${select.self} run tellraw ${
              broadcastTargets
            } ${JSON.stringify([
              '<',
              { text: name || 'Passerby', color: colour, bold: true },
              `> `,
              ...message.message
            ])}`,
            `execute at ${select.self} run playsound minecraft:entity.villager.ambient player ${broadcastTargets}`,
            `schedule function ${namespace}:${
              i === dialogue.messages.length - 1
                ? `npc/dialogue-${id}-${idx}-end`
                : indexToFuncName(i + 1)
            } ${duration}t`
          ]
        }
        functions[`npc/dialogue-${id}-${idx}-end`] = [
          '# Handle the end of the conversation.',
          // No `limit=1` just in case there are multiple players with the tag
          `tag @a[tag=${playerTag}] remove spoken-to`,
          `tag @a[tag=${playerTag}] remove ${playerTag}`,
          `execute as ${select.self} at @s run tp @s ~ ~ ~ ${rx} ${ry}`,
          'end' in dialogue ? `scoreboard players set ${select.self} dialogue-status ${dialogue.end}` : '# no scoreboard change here',
          `tag ${select.self} remove speaking`
        ]
        return [
          `execute store success score dialogue-begun dialogue-status if entity ${select.newPlayer} as ${select.self} if score @s dialogue-status matches ${dialogue.cond} run schedule function ${namespace}:${indexToFuncName(0)} 1t`,
          `execute if score dialogue-begun dialogue-status matches 1 run tag ${select.newPlayer} add spoken-to`,
          `scoreboard players set dialogue-begun dialogue-status 0`,
          ''
        ]
      }),
      `tag ${select.newPlayer} remove ${playerTag}`, //if dialogue failed, remove the playertag
      '',
      '# While in a conversation, make eye contact with the player.',
      `execute as ${select.speaking} at @s run tp @s ~ ~ ~ facing entity ${select.player}`
    ],
    functions
  }
}

export function createQuest (
  namespace: string,
  ind: number,
  id: string,
  {
    name,
    description,
    condition
  }: Quest
): {
  reset: Lines
  onLoad: Lines
  onTick: Lines
  functions: Record<string, Lines>
} {
  
  const functions: Record<string, Lines[]> = {}

  let reset: Lines[] = [];
  let onLoad: Lines[] = [];
  let onTick: Lines[] = [];

  function getQ(path: number[] = []): string {
    return path.length === 0 ? `q-${ind}` : `q-${ind}-${path.join('-')}`
  }

  functions[`quests/quest-${id}-start`] = [
    `scoreboard players set @a quest-book-upd -1`,
    `data modify storage generated:quest_book current[${ind}] set value ${rawJson({
      text:``,
      color:"dark_green",
      bold:false,
      underlined:false,
      hoverEvent:{
        action:"show_text",
        contents: {
          text: eval(`\`${description}\``)
        }
      },
      extra:[
        {
          text:name,
          italic:true
        },
        ' (',
        {
          score:{
            name: id,
            objective: 'quest-status'
          }
        },
        `/${condition.count})`
      ]
    })}`,
    `scoreboard players set ${id} quest-status 0`,
    `scoreboard objectives add ${getQ()} dummy`
  ]

  functions[`quests/quest-${id}-end`] = [
    `data modify storage generated:quest_book current[${ind}] set value ''`,
    `data modify storage generated:quest_book completed[${ind}] set value ${rawJson({
      text:``,
      color:"gray",
      bold:false,
      underlined:false,
      strikethrough:true,
      hoverEvent:{
        action:"show_text",
        contents: {
          text: eval(`\`${description}\``)
        }
      },
      extra:[
        {
          text:name,
          italic:true
        },
        ` (${condition.count}/${condition.count})`
      ]
    })}`,
    `scoreboard players set @a quest-book-upd -1`,
    `scoreboard objectives remove ${getQ()}`,
    `scoreboard players reset ${id} quest-status`
  ]

  functions[`quests/quest-${id}-tick`] = [];

  condition = {
    type: 'nest',
    value: [condition],
    overflow: false,
    count: condition.count
  }

  function parse(path: number[] = []) {
    let obj = path.reduce((o, i) => (o.value as QuestCondition[])[i], condition); //as-es are needed because i hate typescript

    functions[`quests/quest-${id}-start`].push(
      `scoreboard players set ${getQ(path)} ${getQ()} 0` // set all to 0 at start
    )

    functions[`quests/tick/${getQ(path)}`] = [
      `scoreboard players operation o${getQ(path)} ${getQ()} = ${getQ(path)} ${getQ()}`,
      `scoreboard players set ${getQ(path)} ${getQ()} 0`
    ];

    switch(obj.type) {
      case 'stat':
        functions[`quests/quest-${id}-start`].push(`scoreboard objectives add ${getQ(path)} ${obj.value}`);
        functions[`quests/quest-${id}-end`].push(`scoreboard objectives remove ${getQ(path)}`);

        functions[`quests/tick/${getQ(path)}`].push([
          `scoreboard players operation ${getQ(path)} ${getQ()} += @a ${getQ(path)}`,
          `scoreboard players operation ${getQ(path)} ${getQ()} *= 100 const`,
        ])

        functions[`quests/quest-${id}-tick`].push(
          `function generated:quests/tick/${getQ(path)}`
        )
        break;
      case 'nest':
        for (let i = 0; i < (obj.value as QuestCondition[]).length; i++) {
          const npath = [...path, i];

          // add update functions to tick

          functions[`quests/tick/${getQ(path)}`].push([
            `scoreboard players operation ${getQ(path)} ${getQ()} += ${getQ(npath)} ${getQ()}`
          ])

          parse(npath)
        }

        functions[`quests/quest-${id}-tick`].push([
          `scoreboard players set - ${getQ()} 0`,
          `execute ${
            (obj.value as QuestCondition[]).map((v, i)=>`if score ${getQ([...path, i])} ${getQ()} = o${getQ([...path, i])} ${getQ()}`).join(' ')
          } run scoreboard players set - ${getQ()} 1`,
          `execute if score - ${getQ()} matches 0 run function generated:quests/tick/${getQ(path)}`
        ])
        break;
    }

    functions[`quests/tick/${getQ(path)}`].push([
      `scoreboard players operation ${getQ(path)} ${getQ()} /= ${<number>obj.count/100} const`,
      `${obj.overflow ? '# ' : ''} execute unless score ${getQ(path)} ${getQ()} matches ..100 run scoreboard players set ${getQ(path)} ${getQ()} 100` // max 100% completion
    ])
  }

  parse();

  functions[`quests/tick/${getQ()}`].push([
    `execute unless score o${getQ()} ${getQ()} = ${getQ()} ${getQ()} run scoreboard players set @a quest-book-upd 0`
  ])
  functions[`quests/quest-${id}-tick`].push([
    `scoreboard players operation ${id} quest-status = ${getQ()} ${getQ()}`
  ])

  onTick.push([
    `execute if score ${id} quest-status matches 0.. run function generated:quests/quest-${id}-tick`
  ])

  reset = functions[`quests/quest-${id}-end`].slice(3)

  return {
    reset,
    onLoad,
    onTick,
    functions
  }
}