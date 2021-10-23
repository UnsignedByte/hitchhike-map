import { Lines , schedule, hash } from './main.ts'
import { Npc, Quest, QuestCondition } from './parse-yaml.ts'
import { CONSTS } from './consts.ts'
import { item } from './item.ts'

item; // prevent typescript from eliding this import because i hate typescript and it is cringe

let npc: Record<string, string> = {} // dictionary for npc selectors

type NbtValue = string | number | boolean | undefined | null;
type NbtData = {
  [key: string]: NbtValue | NbtData
}

export function toGive (item: NbtData, count: number = 1) {
  return `${(<string>item.id!).slice(1, (<string>item.id!).length-1)}${toSnbt(item.tag as NbtData)} ${count}`
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

export function toCost(v: number) { // value to $ string
  return `${(v/100).toFixed(2)}B`
  // return v >= 100 ? `${(v/100).toFixed(2)}B` : `${v}b`
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
    baby,
    invisible,
    dialogue = []
  }: Npc
): {
  reset: Lines
  onLoad: Lines
  initDialogue: Lines,
  speaking: Lines,
  functions: Record<string, Lines>
} {
  name = eval(`\`${name}\``);
  const npcTag = `npc-${id}`
  const playerTag = `victim-of-dialogue-by-${id}`
  // Prevent the dialogue from immediately restarting

  const START_DIST = 4
  const LEAVE_DIST = 10
  const HEAR_DIST = 50

  const select = {
    self: `@e[tag=${npcTag}, limit=1]`,
    selected: `@e[tag=${npcTag}, tag=selected_npc, tag=!speaking, limit=1]`,
    speaking: `@e[tag=${npcTag}, tag=speaking, limit=1]`,

    player: `@a[tag=${playerTag}, limit=1]`,
    newPlayer: `@a[tag=${playerTag}, tag=!spoken-to, limit=1]`,
    eavesdropper: `@a[tag=npc-eavesdropper]`
  }

  npc[id] = select.self;

  const functions: Record<string, Lines> = {}

  const nts = (num: number): string => num.toFixed(Math.max(2, (num.toString().split('.')[1] || []).length));

  const tp = (tx: number, ty: number, tz: number, rtx: number = rx, rty: number = ry): string => {
    x = tx;
    y = ty;
    z = tz;
    rx = rtx;
    ry = rty;

    return `tp ${select.self} ${nts(x)} ${y} ${nts(z)} ${rx} ${ry}`;
  }

  return {
    reset: [
      `# Summon the villager for ${id}.`,
      // Summon new villager
      `summon minecraft:villager ${nts(x)} ${y} ${nts(z)} ${toSnbt(Object.assign({
        Rotation: `[${rx}f, ${ry}f]`,
        Silent: true,
        Invulnerable: true,
        NoAI:true,
        NoGravity:true,
        // `npc` tag is unused but might be nice to kill all NPCs
        Tags: `["npc", "${npcTag}"${baby ? ', "baby"' : ''}${invisible ? ', "invisible"' : ''}]`,
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
      },
      invisible ? {
        Passengers:`[${toSnbt({
          id:'area_effect_cloud',
          CustomName: name
            ? (colour === "null" ? name : rawJson({ text: name, color: colour, bold: true }))
            : null,
          Duration:2147483647,
          Tags: `["npc", "aec"]`
        })}]`,
      } : {
        CustomName: name
          ? (colour === "null" ? name : rawJson({ text: name, color: colour, bold: true }))
          : null
      }))}`,
      `scoreboard players set @e[tag=npc] dialogue-status 0`
    ],
    onLoad: [
      // Reset conversations, if possible (player may be offline)
      `tag @a remove ${playerTag}`
    ],
    initDialogue: [
      "# Start a conversation if it was selected",
      // TODO: Consider `mark` and `if`
      (() => {
        functions[`npc/${id}/tick`] = [
          `tag @a[tag=npc_selector,sort=nearest,limit=1] add ${playerTag}`,
          `tag ${select.player} remove npc_selector`,
          `tag @s add speaking`,
          `scoreboard players set dialogue-begun dialogue-status 0`,
          dialogue.map((dialogue, idx) => {
            const indexToFuncName = (i: number) =>
              `npc/${id}/${idx}-${i
                .toString()
                .padStart(String(dialogue.messages.length - 1).length, '0')}`
            for (const [i, message] of dialogue.messages.entries()) {
              // console.log(message)
              message.message.map(msg => {
                if ('selector' in msg && (<string>msg.selector)[0] !== '@') msg.selector = <string>eval(<string>msg.selector);
                return msg
              });
              // # of vowels (≈ syllables) * 5 ticks/vowel
              const fulltext = message.message.map(x=>x.text || '').join("");
              const duration = message.wait ?? ((fulltext.match(/[aiueo]/gi)?.length ?? 4) * 6)
              functions[`${indexToFuncName(i)}`] = [
                `tag ${select.player} add npc-eavesdropper`,
                `execute at ${select.self} run tag ${message.global ? '@a' : `@a[distance=..${HEAR_DIST}]`} add npc-eavesdropper`,
                `# Dialogue line #${idx}-${i + 1}: speak and make noise.`,
                `execute at ${select.self} run tellraw ${select.eavesdropper} ${JSON.stringify([
                  '<',
                  (colour === "null" ? JSON.parse(eval(name || `'"Passerby"'`)) : { text: name || 'Passerby', color: colour, bold: true }),
                  `> `,
                  ...message.message
                ])}`,
                `${message.silent ? '# silent // ' : ''}execute at ${select.self} run playsound minecraft:entity.villager.ambient player ${select.eavesdropper} ~ ~ ~ 1000 1 1`,
                message.command.map(x=>eval(`\`${x}\``)),
                `schedule function ${namespace}:${
                  i === dialogue.messages.length - 1
                    ? `npc/${id}/${idx}-end`
                    : indexToFuncName(i + 1)
                } ${duration}t`,
                `tag @a remove npc-eavesdropper`,
              ]
            }
            functions[`npc/${id}/${idx}-end`] = [
              '# Handle the end of the conversation.',
              // No `limit=1` just in case there are multiple players with the tag
              `tag @a[tag=${playerTag}] remove spoken-to`,
              `tag @a[tag=${playerTag}] remove ${playerTag}`,
              `execute as ${select.self} at @s run tp @s ~ ~ ~ ${rx} ${ry}`,
              dialogue.end.map(x=>eval(`\`${x}\``)),
              `tag ${select.self} remove speaking`
            ]
            return [
              `execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity ${select.newPlayer} if score @s dialogue-status matches ${dialogue.cond} run schedule function ${namespace}:${indexToFuncName(0)} 1t`
            ]
          }),
          `execute if score dialogue-begun dialogue-status matches 1 run tag ${select.newPlayer} add spoken-to`,
          `tag ${select.newPlayer} remove ${playerTag}`, //if dialogue failed, remove the playertag
          `execute if score dialogue-begun dialogue-status matches 0 if entity ${select.newPlayer} run tag @s remove speaking`, // no dialogue to start, don't speak
        ];

        return `execute as @s[tag=${npcTag}] at @s run function generated:npc/${id}/tick`;
      })()
    ],
    speaking: [
      '# While in a conversation, make eye contact with the player.',
      `tp @s[tag=${npcTag}] ~ ~ ~ facing entity ${select.player}`
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
    hint,
    end,
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

  function getQ(path: number[] = [], pre: string = 'q'): string {
    return path.length === 0 ? `${pre}-${ind}` : `${pre}-${ind}-${path.join('-')}`
  }

  functions[`quests/${id}-start`] = [
    `scoreboard players set @a quest-book-upd -1`,
    `data modify storage generated:quest_book current[${ind}] set value ${rawJson({
      text:``,
      color:"dark_green",
      bold:false,
      underlined:false,
      hoverEvent:{
        action:"show_text",
        contents: {
          text: eval(`\`${hint || description}\``)
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
        `%)`
      ]
    })}`,
    `scoreboard players set ${id} quest-status 0`,
    `scoreboard objectives add ${getQ()} dummy`
  ]

  functions[`quests/${id}-end`] = [
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
        ` (100%)`
      ]
    })}`,
    `scoreboard players set @a quest-book-upd -1`,
    `scoreboard players set ${id} quest-status -1`,
    end.map(x=>eval(`\`${x}\``)),
    `function generated:quests/${id}-reset`
  ]

  functions[`quests/${id}-reset`] = [
    `scoreboard objectives remove ${getQ()}`
  ]

  functions[`quests/${id}-tick`] = [];

  condition = {
    type: 'nest',
    value: [condition],
    overflow: false,
    count: 100,
    weight: 100
  }

  function parse(path: number[] = []) {
    let obj = path.reduce((o, i) => (o.value! as QuestCondition[])[i], condition); //as-es are needed because i hate typescript

    functions[`quests/${id}-start`].push(
      `scoreboard players set ${getQ(path)} ${getQ()} 0` // set all to 0 at start
    )

    functions[`quests/tick/${getQ(path)}`] = [
      `scoreboard players operation o${getQ(path)} ${getQ()} = ${getQ(path)} ${getQ()}`,
      `scoreboard players set ${getQ(path)} ${getQ()} 0`
    ];

    switch(obj.type) {
      case 'player':

        if (obj.condition!.length > 0) {
          functions[`quests/${id}-start`].push(`scoreboard objectives add ${getQ(path)} dummy`);
          functions[`quests/${id}-reset`].push(`scoreboard objectives remove ${getQ(path)}`);

          functions[`quests/tick/${getQ(path)}`].push([
            `scoreboard players set @a ${getQ(path)} 0`,
            (<string[]>obj.condition).map(x=>`execute as @a at @s ${eval(`\`${x}\``)} run scoreboard players add @s ${getQ(path)} 1`),
            `scoreboard players operation ${getQ(path)} ${getQ()} += @a ${getQ(path)}`
          ])
        }

        if (obj.stat! !== 'dummy') {
          functions[`quests/${id}-start`].push(`scoreboard objectives add ${getQ(path, "s")} ${obj.stat}`);
          functions[`quests/${id}-reset`].push(`scoreboard objectives remove ${getQ(path, "s")}`);
          functions[`quests/tick/${getQ(path)}`].push(`scoreboard players operation ${getQ(path)} ${getQ()} += @a ${getQ(path, "s")}`)
        }

        functions[`quests/tick/${getQ(path)}`].push([
          <string[]>obj.value, //custom lines
          `scoreboard players operation ${getQ(path)} ${getQ()} *= 100 const`
        ]);
        if (<boolean>obj.all) functions[`quests/tick/${getQ(path)}`].push(`scoreboard players operation ${getQ(path)} ${getQ()} /= playercount vars`)

        functions[`quests/${id}-tick`].push(
          `function generated:quests/tick/${getQ(path)}`
        )
        break;
      case 'cond':
        functions[`quests/tick/${getQ(path)}`].push([
          (<string[]>obj.value).map(x=>`execute ${eval(`\`${x}\``)} run scoreboard players add ${getQ(path)} ${getQ()} 1`),
          `scoreboard players operation ${getQ(path)} ${getQ()} *= 100 const`
        ])
        
        functions[`quests/${id}-tick`].push(
          `function generated:quests/tick/${getQ(path)}`
        )
        break;
      case 'nest':
        if (obj.count == -100) obj.count = obj.value.reduce((i, x)=>i+x.weight!, 0);

        for (let i = 0; i < (<QuestCondition[]>obj.value!).length; i++) {
          const npath = [...path, i];

          // add update functions to tick

          functions[`quests/tick/${getQ(path)}`].push([
            `scoreboard players operation ${getQ(path)} ${getQ()} += ${getQ(npath)} ${getQ()}`
          ])

          parse(npath)
        }

        functions[`quests/${id}-tick`].push([
          `scoreboard players set - ${getQ()} 0`,
          `execute ${
            (<QuestCondition[]>obj.value!).map((v, i)=>`if score ${getQ([...path, i])} ${getQ()} = o${getQ([...path, i])} ${getQ()}`).join(' ')
          } run scoreboard players set - ${getQ()} 1`,
          `execute if score - ${getQ()} matches 0 run function generated:quests/tick/${getQ(path)}`
        ])
        break;
    }

    // console.log(obj);

    functions[`quests/tick/${getQ(path)}`].push([
      `scoreboard players operation ${getQ(path)} ${getQ()} *= ${obj.weight} const`,
      `scoreboard players operation ${getQ(path)} ${getQ()} /= ${obj.count} const`,
      `${obj.overflow ? '# ' : ''}execute unless score ${getQ(path)} ${getQ()} matches ..${obj.weight} run scoreboard players set ${getQ(path)} ${getQ()} ${obj.weight}` // max weight% completion
    ])
  }

  parse();

  functions[`quests/tick/${getQ()}`].push([
    `execute unless score o${getQ()} ${getQ()} = ${getQ()} ${getQ()} run scoreboard players set @a quest-book-upd 0`
  ])
  functions[`quests/${id}-tick`].push([
    `scoreboard players operation ${id} quest-status = ${getQ()} ${getQ()}`,
    `execute if score ${id} quest-status matches 100 run function generated:quests/${id}-end`
  ])

  onTick.push([
    `execute if score ${id} quest-status matches 0.. run function generated:quests/${id}-tick`
  ])

  reset = [
    `scoreboard players reset ${id} quest-status`,
    `function generated:quests/${id}-reset`
  ]

  return {
    reset,
    onLoad,
    onTick,
    functions
  }
}

export function detectItem(functions: Record<string, Lines>, it: NbtData, whitelist: (number | string)[] = [], blacklist: (number | string)[] = []): Lines {
  let name = hash(JSON.stringify(it));
  const allslots = Object.values(CONSTS.slots);
  if (whitelist.length === 0) {
    whitelist = allslots;
  } else {
    whitelist = whitelist.map(x=>(x in CONSTS.slots) ? CONSTS.slots[x] : x);
  }

  blacklist = blacklist.map(x=>(x in CONSTS.slots) ? CONSTS.slots[x] : x);

  whitelist = whitelist.filter(x=>!blacklist.includes(x));

  const fname = `item/detect-${name}`;
  const compiler = `item/compile/c-${name}`;

  if (!(fname in functions)) {
    functions[`${fname}-specific`] = [];
    functions[`${fname}`] = [
      `scoreboard players set @a idetect 0`,
      `execute as @a[nbt={Inventory:[${toSnbt(it)}]}] run scoreboard players set @s idetect 1`
    ]

    for (let i = 0; i < allslots.length; i++) {
      let r = i % 31;
      let q = Math.floor(i / 31);

      if (r == 0) {
        (functions[`${fname}-specific`] as Lines[]).push([
          `scoreboard players set @a i${q}detect 0`
        ])
      }

      (functions[`${fname}-specific`] as Lines[]).push(`execute as @a[nbt={Inventory:[${toSnbt(Object.assign(
        Object.assign({}, it),
        {
          Slot: `${allslots[i]}b`
        }
      ))}]}] run scoreboard players add @s i${q}detect ${1 << r}`);
    }
  }

  functions[compiler] = [
    `scoreboard players set @s idetect 0`,
    [...Array(Math.ceil(allslots.length / 31)).keys()].map(x=>[
      `scoreboard players operation l bitwise = _ i${x}detect`,
      `scoreboard players operation r bitwise = @s i${x}detect`,
      `function generated:bitwise/and`,
      `execute if score result bitwise matches 1.. run scoreboard players set @s idetect 1`
    ])
  ]

  if (whitelist.length === allslots.length) {
    return [
      `function generated:${fname}`
    ];
  } else {
    return [
      `function generated:${fname}-specific`,
      whitelist.reduce((p, c) => {
        let i = allslots.indexOf(<number>c);
        p[Math.floor(i / 31)] += 1 << (i % 31);

        return p;
      }, new Array(Math.ceil(allslots.length / 31)).fill(0)).map((x, i)=>
        `scoreboard players set _ i${i}detect ${x}`
      ), 
      `execute as @a run function generated:${compiler}`
    ];
  }
}

// Handle all story related function generation
export function story(functions: Record<string, Lines>, reset: Lines[], load: Lines[], tick: Lines[]) {
  function addfunc(src: string, cmds: Lines[]) {
    functions[`story/${src}`] = cmds;
  }

  function genseq(src: string, seq: any) {
    addfunc(src, [...(seq.cmds ?? []), ...(seq.next ?? []).map((x: any, i: number)=>{
      genseq(`${src}-${i}`, x.seq);
      return `schedule function generated:story/${src}-${i} ${x.wait}t`
    })])
  }

  // intro stuff
  (()=> {

    genseq('intro/start', {
      cmds: [
        `gamerule doDaylightCycle true`,
        `playsound minecraft:entity.lightning_bolt.thunder weather @a 1038.06 123.00 231.74 100 1.0`,
        `playsound minecraft:entity.lightning_bolt.thunder weather @a 1192.00 178.00 470.72 100 0.3`,
        `playsound minecraft:entity.lightning_bolt.thunder weather @a 944.78 72.00 -137.30 100 0.5`,
        `weather rain`,
        `setblock 1005 63 52 air`,
        `setblock 1011 63 52 air`,
        `setblock 1011 63 66 air`,
        `setblock 1005 63 66 air`,
        `playsound minecraft:entity.guardian.attack block @a 1008.5 64.00 59.5 1.3 2`
      ],
      next: [
      {
        seq: {
          cmds: [
            `# Stop rain after sunrise`,
            `weather clear 1000000`
          ]
        },
        wait: 1500
      },
      {
        seq: {
          cmds: [
            `# Stop daylight cycle at noon`,
            `gamerule doDaylightCycle false`
          ]
        },
        wait: 7000
      },
      {
        seq: {
          cmds: [
            `function generated:story/intro/_settv`,
            `effect give @a blindness 2 0 true`,
            `playsound minecraft:entity.lightning_bolt.thunder weather @a 1008.46 100.00 59.65 100 0.6`,
            `playsound minecraft:entity.lightning_bolt.thunder weather @a 1051.32 72.00 46.34 100 1.2`
          ],
          next: [
            {
              seq: {
                cmds: [
                  `function hitchhike:story/intro/unlock_basement_door`,
                  `function hitchhike:story/intro/lock_external_doors`,
                  `function hitchhike:story/intro/detect_barrel_open`,
                  `scoreboard players set - quest-book-upd 1`,
                  `schedule function generated:quests/visitfriend-start 1t`
                ]
              },
              wait: 100
            },
            {
              seq: {
                cmds: [
                  `particle minecraft:white_ash 1008.5 63.9 59.5 2 0. 5 0 200`,
                  `particle minecraft:falling_dust oak_planks 1008.5 63.9 59.5 2 0. 5 0 20`,
                  `particle minecraft:dust .53 .45 .32 1.5 1008.5 63.9 59.5 2 0. 5 1 20`
                ],
                next: [{
                  seq: {
                    cmds: [
                      `particle minecraft:falling_dust oak_planks 1008.5 63.9 59.5 2 0. 5 1 10`,
                      `particle minecraft:dust .53 .45 .32 1.5 1008.5 63.9 59.5 2 0. 5 1 10`
                    ],
                    next: [{
                      seq: {
                        cmds: [
                          `particle minecraft:white_ash 1008.5 63.9 59.5 2 0. 5 0 300`,
                          `particle minecraft:falling_dust oak_planks 1008.5 63.9 59.5 2 0. 5 1 20`,
                          `particle minecraft:dust .53 .45 .32 1.5 1008.5 63.9 59.5 2 0. 5 1 15`
                        ],
                        next: [{
                          seq: {
                            cmds: [
                              `particle minecraft:falling_dust oak_planks 1008.5 63.9 59.5 2 0. 5 1 10`,
                              `particle minecraft:dust .53 .45 .32 1.5 1008.5 63.9 59.5 2 0. 5 1 10`
                            ],
                            next: [{
                              seq: {
                                cmds: [
                                  `particle minecraft:falling_dust oak_planks 1008.5 63.9 59.5 2 0. 5 1 20`,
                                  `particle minecraft:dust .53 .45 .32 1.5 1008.5 63.9 59.5 2 0. 5 1 15`
                                ]
                              },
                              wait: 4
                            }]
                          },
                          wait: 9
                        }]
                      },
                      wait: 5
                    }]
                  },
                  wait: 3
                }]
              },
              wait: 8
            },
            {
              seq: {
                cmds: [
                  `setblock 1005 63 52 redstone_block`
                ],
                next: [{
                  seq: {
                    cmds: [
                      `setblock 1005 63 52 air`
                    ],
                    next: [{
                      seq: {
                        cmds: [
                          `setblock 1005 63 52 redstone_block`
                        ],
                        next: [{
                          seq: {
                            cmds: [
                              `setblock 1005 63 52 air`
                            ],
                            next: [{
                              seq: {
                                cmds: [
                                  `setblock 1005 63 52 redstone_block`
                                ]
                              },
                              wait: 8
                            }]
                          },
                          wait: 5
                        }]
                      },
                      wait: 15
                    }]
                  },
                  wait: 5
                }]
              },
              wait: 12
            },
            {
              seq: {
                cmds: [
                  `setblock 1011 63 52 redstone_block`
                ],
                next: [{
                  seq: {
                    cmds: [
                      `setblock 1011 63 52 air`
                    ],
                    next: [{
                      seq: {
                        cmds: [
                          `setblock 1011 63 52 redstone_block`
                        ],
                        next: [{
                          seq: {
                            cmds: [
                              `setblock 1011 63 52 air`
                            ],
                            next: [{
                              seq: {
                                cmds: [
                                  `setblock 1011 63 52 redstone_block`
                                ]
                              },
                              wait: 12
                            }]
                          },
                          wait: 5
                        }]
                      },
                      wait: 9
                    }]
                  },
                  wait: 14
                }]
              },
              wait: 16
            },
            {
              seq: {
                cmds: [
                  `setblock 1005 63 66 redstone_block`
                ],
                next: [{
                  seq: {
                    cmds: [
                      `setblock 1005 63 66 air`
                    ],
                    next: [{
                      seq: {
                        cmds: [
                          `setblock 1005 63 66 redstone_block`
                        ],
                        next: [{
                          seq: {
                            cmds: [
                              `setblock 1005 63 66 air`
                            ],
                            next: [{
                              seq: {
                                cmds: [
                                  `setblock 1005 63 66 redstone_block`
                                ]
                              },
                              wait: 8
                            }]
                          },
                          wait: 6
                        }]
                      },
                      wait: 11
                    }]
                  },
                  wait: 8
                }]
              },
              wait: 14
            },
            {
              seq: {
                cmds: [
                  `setblock 1011 63 66 redstone_block`
                ],
                next: [{
                  seq: {
                    cmds: [
                      `setblock 1011 63 66 air`
                    ],
                    next: [{
                      seq: {
                        cmds: [
                          `setblock 1011 63 66 redstone_block`
                        ],
                        next: [{
                          seq: {
                            cmds: [
                              `setblock 1011 63 66 air`
                            ],
                            next: [{
                              seq: {
                                cmds: [
                                  `setblock 1011 63 66 redstone_block`
                                ]
                              },
                              wait: 5
                            }]
                          },
                          wait: 8
                        }]
                      },
                      wait: 9
                    }]
                  },
                  wait: 12
                }]
              },
              wait: 9
            }
          ]
        },
        wait: 12
      }]
    })

    addfunc('intro/_resetkey', [
      `setblock 1024 66 61 air`,
      `setblock 1024 66 61 minecraft:barrel[facing=west,open=false]{Items:[${toSnbt(Object.assign({Count:'1b',Slot:'13b'}, item.housekey))}]}`
    ]);

    addfunc('intro/lock_back_door', [
      `execute unless entity @a[x=1004,y=65,z=61,dx=6,dy=1,dz=4,nbt={SelectedItem:${toSnbt(item.housekey)}}] run function generated:story/intro/close_back_door`,
      `execute if entity @a[x=1004,y=65,z=61,dx=6,dy=1,dz=4,nbt={SelectedItem:${toSnbt(item.housekey)}}] run schedule function hitchhike:story/intro/unlock_external_doors 1t`
    ])

    addfunc('intro/close_back_door', [
      `execute unless block 1007 65 65 minecraft:dark_oak_door[facing=north,half=lower,hinge=right,open=false,powered=false] run title @a actionbar [{"text":"The back door is locked. Maybe look for a key?"}]`,
      `execute unless block 1007 65 65 minecraft:dark_oak_door[facing=north,half=lower,hinge=right,open=false,powered=false] run setblock 1009 64 65 minecraft:redstone_block`,
      `setblock 1009 64 65 air`
    ])

    addfunc('intro/lock_front_door', [
      `execute unless entity @a[x=1011,y=65,z=53,dz=4,dx=3,nbt={SelectedItem:${toSnbt(item.housekey)}}] run function generated:story/intro/close_front_door`,
      `execute if entity @a[x=1011,y=65,z=53,dz=4,dx=3,nbt={SelectedItem:${toSnbt(item.housekey)}}] run schedule function hitchhike:story/intro/unlock_external_doors 1t`
    ])

    addfunc('intro/close_front_door', [
      `execute unless block 1012 65 52 minecraft:dark_oak_door[facing=north,half=lower,hinge=right,open=false,powered=false] run title @a actionbar [{"text":"The front door is locked. Maybe look for a key?"}]`,
      `execute unless block 1012 65 52 minecraft:dark_oak_door[facing=north,half=lower,hinge=right,open=false,powered=false] run setblock 1014 63 51 minecraft:redstone_block`,
      `setblock 1014 63 51 air`
    ])

    addfunc('intro/_settv', [
      [...Array(6).keys()].map(x=>
        `data modify entity @e[x=1005,dx=0,y=${61 - x % 2},dy=0,z=${60 - Math.floor(x / 2)},dz=0,limit=1] Item.tag.map set value ${292+x}`
      )
    ])

    addfunc('intro/_resettv', [
      [...Array(6).keys()].map(x=>
        `data modify entity @e[x=1005,dx=0,y=${61 - x % 2},dy=0,z=${60 - Math.floor(x / 2)},dz=0,limit=1] Item.tag.map set value ${286+x}`
      )
    ])
  })();

  // simon stuff
  (()=> {

    genseq('simon/drink', {
      cmds: [
        `data modify entity @e[tag=npc-simon,limit=1] HandItems[0] set value ${toSnbt(Object.assign({Count:'1b'}, item.store.sold.lacroix))}`,
        `execute at @e[tag=npc-simon,limit=1] run clear @a[nbt={Inventory:[${toSnbt(item.store.sold.lacroix)}]},sort=nearest,limit=1] ${toGive(item.store.sold.lacroix)}`,
        `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.item.pickup neutral @a ~ ~ ~ 1 1`,
        `tag @e[tag=npc-simon,limit=1] add npc-unface`,
        `execute as @e[tag=npc-simon,limit=1] at @s run tp @s ~ ~ ~ 75 20`
      ],
      next: [
        {
          wait: 12,
          seq: {
            cmds: [
              `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1`
            ],
            next: [
              {
                wait: 3,
                seq: {
                  cmds: [
                    `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 0.95`
                  ],
                  next: [
                    {
                      wait: 4,
                      seq: {
                        cmds: [
                          `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1.05`
                        ],
                        next: [
                          {
                            wait: 4,
                            seq: {
                              cmds: [
                                `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1.025`
                              ],
                              next: [
                                {
                                  wait: 3,
                                  seq: {
                                    cmds: [
                                      `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1`
                                    ],
                                    next: [
                                      {
                                        wait: 3,
                                        seq: {
                                          cmds: [
                                            `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 0.95`
                                          ],
                                          next: [
                                            {
                                              wait: 4,
                                              seq: {
                                                cmds: [
                                                  `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1`
                                                ],
                                                next: [
                                                  {
                                                    wait: 3,
                                                    seq: {
                                                      cmds: [
                                                        `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1.05`
                                                      ],
                                                      next: [
                                                        {
                                                          wait: 5,
                                                          seq: {
                                                            cmds: [
                                                              `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1.1`
                                                            ],
                                                            next: [
                                                              {
                                                                wait: 3,
                                                                seq: {
                                                                  cmds: [
                                                                    `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1`
                                                                  ],
                                                                  next: [
                                                                    {
                                                                      wait: 4,
                                                                      seq: {
                                                                        cmds: [
                                                                          `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1.15`
                                                                        ],
                                                                        next: [
                                                                          {
                                                                            wait: 4,
                                                                            seq: {
                                                                              cmds: [
                                                                                `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1`
                                                                              ],
                                                                              next: [
                                                                                {
                                                                                  wait: 5,
                                                                                  seq: {
                                                                                    cmds: [
                                                                                      `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1.1`
                                                                                    ],
                                                                                    next: [
                                                                                      {
                                                                                        wait: 5,
                                                                                        seq: {
                                                                                          cmds: [
                                                                                            `data modify entity @e[tag=npc-simon,limit=1] HandItems[0] set value ${toSnbt({
                                                                                              id:'"minecraft:glass_bottle"',
                                                                                              Count:'1b',
                                                                                              tag: {
                                                                                                Enchantments: `[{}]`
                                                                                              }
                                                                                            })}`,
                                                                                            `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 0.95`
                                                                                          ],
                                                                                          next: [
                                                                                            {
                                                                                              wait: 15,
                                                                                              seq: {
                                                                                                cmds: [
                                                                                                  `execute at @e[tag=npc-simon,limit=1] run playsound entity.player.burp neutral @a ~ ~ ~ 10 0.9`,
                                                                                                  `execute as @e[tag=npc-simon,limit=1] at @s run tp @s ~ ~ ~ ~ -5`
                                                                                                ],
                                                                                                next: [
                                                                                                  {
                                                                                                    wait: 10,
                                                                                                    seq: {
                                                                                                      cmds: [
                                                                                                        `data modify entity @e[tag=npc-simon,limit=1] HandItems[0] set value {}`,
                                                                                                        `execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.ender_pearl.throw neutral @a ~ ~ ~ 1 0.6`,
                                                                                                        `execute at @e[tag=npc-simon,limit=1] run summon item ~ ~1 ~ ${toSnbt({
                                                                                                          Motion:'[-0.5,0.3,0.125]',
                                                                                                          PickupDelay: 20,
                                                                                                          Item:{
                                                                                                            id:'"minecraft:glass_bottle"',
                                                                                                            Count: '1b',
                                                                                                            tag:{
                                                                                                              Enchantments:'[{}]'
                                                                                                            }
                                                                                                          }
                                                                                                        })}`
                                                                                                      ],
                                                                                                      next: [
                                                                                                        {
                                                                                                          wait: 10,
                                                                                                          seq: {
                                                                                                            cmds: [
                                                                                                              `tag @e[tag=npc-simon,limit=1] remove npc-unface`
                                                                                                            ]
                                                                                                          }
                                                                                                        }
                                                                                                      ]
                                                                                                    }
                                                                                                  }
                                                                                                ]
                                                                                              }
                                                                                            }
                                                                                          ]
                                                                                        }
                                                                                      }
                                                                                    ]
                                                                                  }
                                                                                }
                                                                              ]
                                                                            }
                                                                          }
                                                                        ]
                                                                      }
                                                                    }
                                                                  ]
                                                                }
                                                              }
                                                            ]
                                                          }
                                                        }
                                                      ]
                                                    }
                                                  }
                                                ]
                                              }
                                            }
                                          ]
                                        }
                                      }
                                    ]
                                  }
                                }
                              ]
                            }
                          }
                        ]
                      }
                    }
                  ]
                }
              }
            ]
          }
        }
      ]
    })
  })();

  (() => {
    const cellsize = 9;

    // Neighbor set such that index i is the reverse move of index (length - i - 1`)
    const neighbors = [
      [1, 0, 0],
      [0, 1, 0],
      [0, 0, 1],
      [0, 0, -1],
      [0, -1, 0],
      [-1, 0, 0]
    ]

    const mobs: Record<string, string[]> = {
      common: [
        `summon zombie ~ ~ ~ {NoGravity:0b,Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:0b,Health:5f,IsBaby:1b,Tags:["maze-common","maze-mob","maze-mob-null"],CustomName:'{"text":"nullptr","color":"red","bold":true}',ArmorItems:[{},{},{},{id:'minecraft:barrier',Count:1b}],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.follow_range,Base:16},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:4}]}`,
        `summon cave_spider ~ ~ ~ {DeathLootTable:"minecraft:empty",FallFlying:1b,PersistenceRequired:0b,Health:15f,Tags:["maze-common","maze-mob","maze-mob-gridbug"],CustomName:'{"text":"gridbug","color":"red","bold":true}',Attributes:[{Name:generic.max_health,Base:15},{Name:generic.follow_range,Base:16},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:3}]}`,
        `summon bee ~ ~ ~ {Silent:1b,Invulnerable:0b,AngerTime:2147483647,Tags:["maze-mob","maze-host","maze-mob-walrus"],Passengers:[{id:"minecraft:area_effect_cloud",CustomNameVisible:1b,Duration:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:zombie",Silent:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:2f,IsBaby:1b,Tags:["maze-mob"],ArmorItems:[{},{},{},{id:'minecraft:player_head',Count:1b,tag:{SkullOwner:{Id:[I;-1585053926,-215070752,-1100916127,789778227],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDdiYWVkYWY5YWQ5NTQ3NGViMWJlNTg5MjQ0NDVkZmM3N2JiZGMyNTJjYzFjODE2NDRjZjcxNTRjNDQxIn19fQ=='}]}}}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2},{Name:generic.attack_damage,Base:1}]}],CustomName:'{"text":"Walrus Operator","color":"red"}'}],ArmorItems:[{},{},{},{id:'minecraft:barrier',Count:1b}],ActiveEffects:[{Id:11b,Amplifier:5b,Duration:2147483647},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:0}]}`,
        `summon skeleton ~ ~ ~ {Health:15f,Tags:["maze-mob","maze-symlink"],CustomName:'{"text":"SymLink","color":"red"}',HandItems:[{id:"minecraft:bow",Count:1b},{}],Attributes:[{Name:generic.movement_speed,Base:0.2}]}`,
        `summon zombie ~ ~ ~ {Silent:1b,Invulnerable:0b,PersistenceRequired:1b,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:guardian",Health:15f,Tags:["maze-mob","maze-common","maze-mob-dsstore"],CustomName:'{"text":".DS_Store","color":"red"}',Attributes:[{Name:generic.max_health,Base:15}]}],CustomName:'{"text":"SymLink","color":"red"}',ArmorItems:[{id:'minecraft:netherite_boots',Count:1b,tag:{Enchantments:[{}]}},{},{},{}],ActiveEffects:[{Id:11b,Amplifier:5b,Duration:2147483647},{Id:14b,Amplifier:0b,Duration:2147483647}],Attributes:[{Name:generic.follow_range,Base:16},{Name:generic.movement_speed,Base:0.5}]}`
      ],
      rare: [
        `summon wither_skeleton ~ ~ ~ {Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:0b,Health:60f,Tags:["maze-rare","maze-mob","maze-mob-ip"],CustomName:'{"text":"8.8.8.8","color":"dark_red","bold":true}',HandItems:[{id:'minecraft:cookie',Count:1b,tag:{Enchantments:[{id:'minecraft:sharpness',lvl:5s},{id:'minecraft:knockback',lvl:1s}]}},{id:'minecraft:cookie',Count:1b,tag:{Enchantments:[{id:'minecraft:sharpness',lvl:5s},{id:'minecraft:knockback',lvl:1s}]}}],ArmorItems:[{},{},{},{id:'minecraft:tinted_glass',Count:1b}],Attributes:[{Name:generic.max_health,Base:60},{Name:generic.follow_range,Base:32},{Name:generic.knockback_resistance,Base:0.8},{Name:generic.movement_speed,Base:0.15},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:20}]}`,
        `summon vindicator ~ ~ ~ {Silent:1b,LeftHanded:1b,Health:80f,DeathLootTable:"minecraft:empty",Tags:["maze-mob-johnny","maze-mob","maze-rare"],CustomName:'{"text":"Johnny\\'); DROP ANVIL Entities;--","color":"dark_red","bold":true}',HandItems:[{id:"minecraft:anvil",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_trapdoor",Count:1b}],Attributes:[{Name:generic.max_health,Base:80},{Name:generic.follow_range,Base:20},{Name:generic.knockback_resistance,Base:0.8},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:5},{Name:generic.attack_knockback,Base:1}]}`,
        `summon bee ~ ~ ~ {Silent:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:8f,AngerTime:2147483647,Tags:["maze-mob","maze-rare","maze-mob-stack"],Passengers:[{id:"minecraft:bee",Silent:1b,CanPickUpLoot:0b,Health:8f,AngerTime:2147483647,Tags:["maze-mob","maze-rare","maze-mob-stack"],Passengers:[{id:"minecraft:bee",Silent:1b,CanPickUpLoot:0b,Health:8f,AngerTime:2147483647,Tags:["maze-mob","maze-rare","maze-mob-stack"],Passengers:[{id:"minecraft:bee",Silent:1b,CanPickUpLoot:0b,Health:8f,AngerTime:2147483647,Tags:["maze-mob","maze-rare","maze-mob-stack"],Passengers:[{id:"minecraft:bee",Silent:1b,CanPickUpLoot:0b,Health:8f,AngerTime:2147483647,Tags:["maze-mob","maze-rare","maze-mob-stack"],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:8},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:8},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:8},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:8},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:8},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}`
      ],
      boss: [
      ],
      ip_minion: [
        `summon bee ~ ~ ~ {Silent:1b,Invulnerable:1b,AngerTime:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:area_effect_cloud",CustomNameVisible:1b,Duration:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:zombie",Silent:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:2f,IsBaby:1b,Tags:["maze-mob"],ArmorItems:[{},{},{},{id:"minecraft:red_stained_glass",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2},{Name:generic.attack_damage,Base:1}]}],CustomName:'{"text":"Malicious Packet","color":"red"}'}],ArmorItems:[{},{},{},{id:'minecraft:barrier',Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:0}]}`,
        `summon bee ~ ~ ~ {Silent:1b,Invulnerable:1b,AngerTime:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:area_effect_cloud",CustomNameVisible:1b,Duration:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:zombie",Silent:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:2f,IsBaby:1b,Tags:["maze-mob"],HandItems:[{id:"minecraft:cookie",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2},{Name:generic.attack_damage,Base:1}]}],CustomName:'{"text":"Tracking Cookie","color":"#875822"}'}],ArmorItems:[{},{},{},{id:'minecraft:barrier',Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:0}]}`,
      ],
      stackoverflow: [
        `summon bee ~ ~ ~ {Silent:1b,DeathLootTable:"minecraft:empty",Health:5f,AngerTime:2147483647,Tags:["maze-mob","maze-mob-stackoverflow"],CustomName:'{"text":"StackOverflow","color":"red"}',Attributes:[{Name:generic.max_health,Base:5},{Name:generic.follow_range,Base:16},{Name:generic.attack_damage,Base:2}]}`
      ]
    }

    // main weapons
    let weapons: Record<string, any> = {
      spoon: {
        id: `'minecraft:iron_shovel'`,
        tag: {
          display:{
            Name: rawJson({
              text:"Digitally Enlarged Spoon",
              color:"aqua",
              bold:true
            }),
            Lore:`[${rawJson({
                      text:"Soup is a problem of the past!",
                      color:"blue"
                    })}, ${rawJson({
                      text:"Worry not, for this weapon's",
                      color:"blue"
                    })}, ${rawJson({
                      text:"Immense surface area will be",
                      color:"blue"
                    })}, ${rawJson({
                      text:"sure to satisfy.",
                      color:"blue"
                    })}]`
          },
          HideFlags:7,
          Unbreakable:true,
          Enchantments:`[{id:"minecraft:knockback",lvl:3s}]`,
          AttributeModifiers:`[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.2,Operation:1,UUID:[I;172020825,1243695863,-1688953862,1194535858],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;-1466535011,1435910226,-1878562663,-1132015729],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.8,Operation:1,UUID:[I;-922863640,36653646,-1341164666,1599461106],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:1,UUID:[I;-139520492,-1183036538,-1607351058,1989334895],Slot:"mainhand"}]`
        }
      },
      frenchflag: {
        id: `'minecraft:white_banner'`,
        tag: {
          display:{
            Name: rawJson({
              text:"French Flag",
              color:"aqua",
              bold:true
            }),
            Lore:`[${rawJson({
                      text:"Use this, and nobody would",
                      color:"blue"
                    })}, ${rawJson({
                      text:"dare fight you anymore.",
                      color:"blue"
                    })}]`
          },
          HideFlags:7,
          Enchantments:`[{id:"minecraft:knockback",lvl:10s}]`,
          AttributeModifiers:`[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:2,UUID:[I;1383535789,-2064168012,-1710632262,864343479],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1000,Operation:2,UUID:[I;1404153545,785992977,-1535149632,1770570515],Slot:"mainhand"}]`
        }
      },
      commandblock: {
        id: `'minecraft:command_block'`,
        tag: {
          display:{
            Name: rawJson({
              text:"Command Block",
              color:"aqua",
              bold:true
            }),
            Lore:`[${rawJson({
                      text:"Now if only you were",
                      color:"blue"
                    })}, ${rawJson({
                      text:"in creative mode...",
                      color:"blue"
                    })}]`
          },
          HideFlags:7,
          Enchantments:`[{}]`,
          AttributeModifiers:`[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1000,Operation:2,UUID:[I;-236452543,409881411,-1774864685,1481938920],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:1,UUID:[I;-1658005475,239224106,-1186363263,-590591408],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;1355955642,-1776204605,-1097579002,-1040650905],Slot:"mainhand"}]`
        }
      }
    }

    Object.entries(weapons).forEach(([k, v]) => {
      weapons[k].tag = Object.assign({weapon:`'${k}'`, isweapon: true}, v.tag);
    })

    schedule('function generated:story/maze/mobs/move', 10, functions);
    schedule([
      `scoreboard players set mobcount maze 0`,
      `execute as @e[tag=maze-mob,type=!player] run scoreboard players add mobcount maze 1`,
      'execute if score enabled maze matches 1 if score mobcount maze matches ..50 if predicate hitchhike:batchchance at @r as @e[tag=maze-node,distance=4..16,sort=random,limit=1] at @s run function hitchhike:story/maze/mobs/summonbatch'
    ], 20, functions)

    schedule([
      `execute at @a run tag @e[tag=maze-mob,tag=!maze-host,type=!player,distance=..24,sort=nearest,limit=40] add maze-mob-safe`,
      `tp @e[tag=maze-mob,tag=!maze-mob-safe,type=!player,tag=!maze-host] 0 -1000 0`,
      `tag @e remove maze-mob-safe`
    ], 100, functions)

    functions[`story/maze/mobs/move`] = ``;

    // add mob attack phases
    const addmovesequence = (id: string, moves: Lines[][]) => {
      functions[`story/maze/mobs/move`] = [
        functions[`story/maze/mobs/move`],
        `execute as @e[tag=maze-mob,tag=maze-mob-${id}] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/move/${id}/main`
      ]
      addfunc(`maze/mobs/move/${id}/main`, [
        `scoreboard players operation @s maze-mob-phase %= ${moves.length} const`,
        ``,
        moves.map((x: Lines[], i: number)=>{
          addfunc(`maze/mobs/move/${id}/move-${i}`, x)

          return `execute if score @s maze-mob-phase matches ${i} run function generated:story/maze/mobs/move/${id}/move-${i}`
        }),
        `scoreboard players add @s maze-mob-phase 1`,
      ])
    }

    addmovesequence("symlink", [
      [
        `function hitchhike:story/maze/mobs/move/throw_pearl`
      ]
    ])

    addmovesequence("johnny", [
      [
        `execute at @s positioned ^ ^ ^3 positioned ~ ~2 ~ run function hitchhike:story/maze/mobs/johnny/anvil`,
        `playsound minecraft:entity.vindicator.celebrate hostile @a ~ ~ ~`
      ],
      [
        `execute at @e[tag=maze-mob,distance=0.01..10,sort=random,limit=7] positioned ~ ~3 ~ run function hitchhike:story/maze/mobs/johnny/anvil`,
        `playsound minecraft:entity.vindicator.celebrate hostile @a ~ ~ ~`
      ],
    ])

    addmovesequence("stack", [
      [
        `execute if entity @s[nbt=!{Passengers:[{}]}] at @s run function generated:story/maze/mobs/summon/stackoverflow`
      ]
    ])

    addmovesequence("ip", [
      [
        `execute positioned ~ ~1 ~ run function generated:story/maze/mobs/move/ip/summon_minions`,
        `particle cloud ~ ~1 ~ 0.7 1 0.7 0.1 100`,
        `playsound entity.blaze.shoot hostile @a ~ ~1 ~ 1 1.2`
      ],
      [
        `summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",ReapplicationDelay:10,Radius:0.5f,RadiusPerTick:0.05f,RadiusOnUse:0f,Duration:60,DurationOnUse:0f,Color:16711680,Effects:[{Id:20b,Amplifier:2b,Duration:20,ShowParticles:0b}]}`,
        `effect give @s minecraft:levitation 3 3`,
        // `data modify entity @s Motion[1] set value 1d`,
        `playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 1 0.5`
      ],
      [
        `function hitchhike:story/maze/mobs/move/throw_pearl`
      ]
    ])

    addmovesequence("null", [
      [
        `execute if predicate generated:coinflip unless entity @e[tag=maze-mob-null,distance=0.1..5] positioned ~ ~0.1 ~0.01 run ${mobs.common[0]}`
      ]
    ])

    addmovesequence("gridbug", [
      [
        `setblock ~ ~ ~ cobweb keep`,
        `summon area_effect_cloud ~ ~ ~ {Duration:101,Tags:["maze-gridbug-cobwebtimer"]}`
      ]
    ])

    addfunc(`maze/mobs/move/ip/summon_minions`, [
      `function generated:story/maze/mobs/summon/ip_minion`,
      `execute if predicate hitchhike:ipminionchance positioned ~ ~ ~ run function generated:story/maze/mobs/move/ip/summon_minions`
    ])

    schedule([
      `execute as @e[tag=maze-mob,type=bee] at @s run data modify entity @s AngryAt set from entity @p UUID`,
      `execute as @e[tag=maze-shulker-bullet] at @s run data modify entity @s Target set from entity @e[tag=maze-mob,distance=..10,sort=nearest,limit=1] UUID`,
      `execute as @e[tag=maze-mob,type=bee] run data modify entity @s AngerTime set value 2147483647`,
      `execute as @e[tag=maze-mob,type=bee] run data modify entity @s HasStung set value 0`
    ], 20, functions);

    schedule(`execute at @e[tag=maze-pearl] run particle minecraft:firework ~ ~ ~ 0 0 0 1 0`, 5, functions);

    Object.entries(mobs).forEach(([k, v]) => {
      addfunc(`maze/mobs/summon/${k}`, [
        `scoreboard players set _rngm vars ${mobs[k].length}`,
        `function generated:rng/rng`,
        mobs[k].map((x: any, i: number)=>`execute if score rng vars matches ${i} run ${x}`)
      ])
    })

    Object.entries(weapons).forEach(([k, v]) => {
      addfunc(`maze/weapons/${k}/give`, [`give @s ${toGive(v, 1)}`]);
    });

    addfunc('maze/weapons/start', [
      'execute store result score #CMP UUID0 run data get entity @s Thrower[0]',
      'execute store result score #CMP UUID1 run data get entity @s Thrower[1]',
      'execute store result score #CMP UUID2 run data get entity @s Thrower[2]',
      'execute store result score #CMP UUID3 run data get entity @s Thrower[3]',
      'tag @a add match-selectable',
      'function hitchhike:uuid/match',
      Object.entries(weapons).map(([k, v])=>{
        addfunc(`maze/weapons/${k}/start`, [
          `summon minecraft:marker ~ ~ ~ {Tags:["maze-weapon-init","maze-weapon","maze-weapon-${k}"]}`,
          `data modify entity @e[tag=maze-weapon-init,limit=1] data.PlayerUUID set from entity @s UUID`,
          `execute as @s at @s run function hitchhike:story/maze/weapons/${k}/start`,
          `tag @e remove maze-weapon-init`
        ])
        return `execute if entity @s[type=item,nbt={Item:${toSnbt(v)}}] as @a[tag=match-uuid-select] at @s run function generated:story/maze/weapons/${k}/start`
      })
    ])

    addfunc('maze/weapons/tick', [
      'execute as @e[type=item,nbt={Item:{tag:{isweapon:1b}}}] run function generated:story/maze/weapons/start',
      'kill @e[type=item,nbt={Item:{tag:{isweapon:1b}}}]',
      Object.keys(weapons).map(x=>`execute as @e[tag=maze-weapon-${x}] at @s run function hitchhike:story/maze/weapons/${x}/tick`)
    ])

    addfunc('maze/weapons/detecthit', [
      'execute as @s at @s run function hitchhike:hitdetect/detect',
      Object.entries(weapons).map(([k, v])=>`execute if entity @s[nbt={SelectedItem:${toSnbt(v)}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/${k}/onhit`)
    ])

    addfunc('maze/weapons/return', [
      'execute store result score #CMP UUID0 run data get entity @s data.PlayerUUID[0]',
      'execute store result score #CMP UUID1 run data get entity @s data.PlayerUUID[1]',
      'execute store result score #CMP UUID2 run data get entity @s data.PlayerUUID[2]',
      'execute store result score #CMP UUID3 run data get entity @s data.PlayerUUID[3]',
      'tag @a add match-selectable',
      'function hitchhike:uuid/match',
      Object.keys(weapons).map(k=>`execute if entity @s[tag=maze-weapon-${k}] as @a[tag=match-uuid-select] run function generated:story/maze/weapons/${k}/give`),
      'kill @s'
    ])

    const dims = [4, 2]

    addfunc('maze/weapons/frenchflag/inittickers', [
      [...new Array(dims[0]*2+1)].map((x, i) => i-dims[0]-1).map(i=>([...new Array(dims[1]*2+1)].map((x, j)=> j-dims[1]-1).map(j=>[
        `summon marker ~ ~ ~ {Tags:["maze-weapon", "maze-weapon-frenchflag-ticker","maze-weapon-frenchflag-ticker-init","maze-weapon-frenchflag-ticker-init-init"]}`,
        `execute as @e[tag=maze-weapon-frenchflag-ticker-init-init] rotated ~${i*6} ~${j*6} run function hitchhike:story/maze/weapons/frenchflag/initticker`
      ]))),
      `execute as @e[tag=maze-weapon-frenchflag-ticker-init] run data modify entity @s MarkerUUID set from entity @e[tag=maze-weapon-init,limit=1] UUID`,
      `tag @e remove maze-weapon-frenchflag-ticker-init`
    ])

    addfunc('maze/create', [
      '# Reset maze',
      `execute as @e[tag=maze-node] at @s run forceload remove ~${-(cellsize-1)/2} ~${-(cellsize-1)/2} ~${(cellsize-1)/2} ~${(cellsize-1)/2}`,
      'kill @e[tag=maze-marker]',
      `function hitchhike:story/maze/reset`,
      '# Set Size of maze',
      'scoreboard players set size maze 15',
      '# Set up bossbar',
      'bossbar set minecraft:maze name [{"text":"Clearing Memory"}]',
      'bossbar set minecraft:maze color blue',
      'execute store result bossbar minecraft:maze max run scoreboard players get size maze',
      'bossbar set minecraft:maze players @a',
      'bossbar set minecraft:maze visible true',
      'bossbar set minecraft:maze style progress',
      'bossbar set minecraft:maze value 0',
      'scoreboard players set bossbar maze 0',
      `summon marker -1500 ${(cellsize-1)/2} 0 {Tags:["maze-marker","maze-create-root"]}`,
      '',
      'scoreboard players operation _x maze = size maze',
      'function generated:story/maze/create/_x'
    ]);

    addfunc('maze/create/_x', [
      'scoreboard players operation _y maze = size maze',
      'scoreboard players add bossbar maze 1',
      'execute store result bossbar minecraft:maze value run scoreboard players get bossbar maze',
      '',
      'execute as @e[type=marker,tag=maze-marker,tag=maze-create-root] at @s run function generated:story/maze/create/_y',
      'scoreboard players remove _x maze 1',
      `execute as @e[type=marker,tag=maze-marker,tag=maze-create-root] at @s run tp ~${cellsize} ${(cellsize-1)/2} 0`,
      'execute unless score _x maze matches 0 run schedule function generated:story/maze/create/_x 1t',
      'execute if score _x maze matches 0 run function generated:story/maze/create/_generatepaths'
    ]);

    addfunc('maze/create/_y', [
      'scoreboard players operation _z maze = size maze',
      '',
      'execute as @s at @s run function generated:story/maze/create/_z',
      'scoreboard players remove _y maze 1',
      `tp @s ~ ~${cellsize} 0`,
      'execute unless score _y maze matches 0 as @s at @s run function generated:story/maze/create/_y'
    ]);

    addfunc('maze/create/_z', [
      'summon marker ~ ~ ~ {Tags:["maze-marker","maze-node"]}',
      `forceload add ~${-(cellsize-1)/2} ~${-(cellsize-1)/2} ~${(cellsize-1)/2} ~${(cellsize-1)/2}`,
      `clone ${-1000-(cellsize-1)/2} ${200-(cellsize-1)/2} ${-(cellsize-1)/2} ${-1000+(cellsize-1)/2} ${200+(cellsize-1)/2} ${(cellsize-1)/2} ~${-(cellsize-1)/2} ~${-(cellsize-1)/2} ~${-(cellsize-1)/2}`,
      'scoreboard players remove _z maze 1',
      `tp @s ~ ~ ~${cellsize}`,
      'execute unless score _z maze matches 0 as @s at @s run function generated:story/maze/create/_z'
    ]);

    addfunc('maze/neighbors', [
      '#> Tag the neighbors of a given cell',
      'tag @e[type=marker,tag=maze-node] remove maze-neighbor',
      neighbors.map((x, i)=>[
        `execute positioned ~${x[0]*cellsize} ~${x[1]*cellsize} ~${x[2]*cellsize} run tag @e[type=marker,tag=maze-node,distance=..0.01,sort=nearest,limit=1] add maze-neighbor`,
        `tag @e[type=marker,tag=maze-node] remove maze-neighbor-${i}`,
        `execute positioned ~${x[0]*cellsize} ~${x[1]*cellsize} ~${x[2]*cellsize} run tag @e[type=marker,tag=maze-node,distance=..0.01,sort=nearest,limit=1] add maze-neighbor-${i}`
      ])
    ])

    addfunc('maze/create/_generatepaths', [
      '# We finished building the maze, kill the root',
      'kill @e[type=marker,tag=maze-marker,tag=maze-create-root]',
      '# Start node of the maze',
      'tag @e[type=marker,tag=maze-node,sort=random,limit=1] add maze-start',
      'tag @e[type=marker,tag=maze-node,tag=maze-start] add maze-visited',
      'execute at @e[type=marker,tag=maze-node,tag=maze-start] run function generated:story/maze/neighbors',
      'tag @e[type=marker,tag=maze-node,tag=maze-neighbor] add maze-adjacent',
      '',
      '# Set up bossbar',
      'bossbar set minecraft:maze name [{"text":"Loading SD Card"}]',
      'bossbar set minecraft:maze color green',
      'scoreboard players operation bossbar maze = size maze',
      'scoreboard players operation bossbar maze *= size maze',
      'execute store result bossbar minecraft:maze max run scoreboard players get bossbar maze',
      'bossbar set minecraft:maze players @a',
      'bossbar set minecraft:maze visible true',
      'bossbar set minecraft:maze style progress',
      'bossbar set minecraft:maze value 0',
      'scoreboard players set bossbar maze 0',
      '',
      '#> Start propogation',
      '#> Propogate in batches',
      '# size^2',
      'scoreboard players operation batchsize maze = size maze',
      'function generated:story/maze/create/_propogatebatch',
      'function generated:story/maze/create/_propogate'
    ])

    addfunc('maze/create/_generatecleanup', [
      'bossbar set minecraft:maze name [{"text":"Finalizing Data"}]',
      'bossbar set minecraft:maze color red',
      'scoreboard players operation _removeleft maze = size maze',
      'scoreboard players operation _removeleft maze *= 8 const',
      'scoreboard players operation batchsize maze = size maze',
      'execute store result bossbar minecraft:maze max run scoreboard players get _removeleft maze',
      'bossbar set minecraft:maze players @a',
      'bossbar set minecraft:maze visible true',
      'bossbar set minecraft:maze style progress',
      'bossbar set minecraft:maze value 0',
      'scoreboard players set bossbar maze 0',
      '#> Clean up maze generation and finalize maze',
      '# Remove random walls from the maze to make it imperfect',
      'function generated:story/maze/create/removerandomwalls',
    ])

    addfunc('maze/create/_cleanupall', [
      'execute as @e[type=marker,tag=maze-node] run function generated:story/maze/create/getpos',
      'tag @e[type=marker,tag=maze-node] remove maze-visited',
      'bossbar set minecraft:maze visible false',
      `scoreboard players set enabled maze 1`
    ])

    addfunc('maze/create/_propogatebatch', [
      'scoreboard players operation _batchleft maze = batchsize maze',
      'scoreboard players add bossbar maze 1',
      'execute store result bossbar minecraft:maze value run scoreboard players get bossbar maze',
      'function generated:story/maze/create/_propogate',
      'execute unless score _batchleft maze matches ..-1 run schedule function generated:story/maze/create/_propogatebatch 1t',
      'execute if score _batchleft maze matches ..-1 run function generated:story/maze/create/_generatecleanup'
    ])

    addfunc('maze/create/_propogate', [
      '# Use Prim\'s modified maze generation algorithm',
      'execute unless entity @e[type=marker,tag=maze-node,tag=maze-adjacent] run scoreboard players set _batchleft maze 0',
      'execute as @e[type=marker,tag=maze-node,tag=maze-adjacent,sort=random,limit=1] at @s run function generated:story/maze/create/_insertcell',
      'scoreboard players remove _batchleft maze 1',
      'execute unless score _batchleft maze matches ..0 run function generated:story/maze/create/_propogate'
    ])

    addfunc('maze/create/_insertcell', [
      '#> Insert adjacent cell into maze',
      'tag @s remove maze-adjacent',
      'function generated:story/maze/neighbors',
      '# Add neighbors to adjacent list',
      'tag @e[type=marker,tag=maze-node,tag=maze-neighbor,tag=!maze-visited] add maze-adjacent',
      '# Select random node in maze to connect to from neighbors',
      'tag @e[type=marker,tag=maze-node,tag=maze-neighbor,tag=maze-visited,sort=random,limit=1] add maze-connect',
      'execute as @s run function generated:story/maze/create/_deletewall',
      '# add self to maze',
      'tag @s remove maze-adjacent',
      'tag @s add maze-visited'
    ])

    addfunc('maze/create/removerandomwalls', [
      '#> Remove n random walls from the maze',
      'scoreboard players add bossbar maze 1',
      'execute store result bossbar minecraft:maze value run scoreboard players get bossbar maze',
      `scoreboard players operation _batchleft maze = batchsize maze`,
      'scoreboard players remove _removeleft maze 1',
      'function generated:story/maze/create/_removerandomwalls',
      'execute unless score _removeleft maze matches 0 run schedule function generated:story/maze/create/removerandomwalls 1t',
      `execute if score _removeleft maze matches 0 run function generated:story/maze/create/_cleanupall`
    ])

    addfunc('maze/create/_removerandomwalls', [
      '#> Remove n random walls from the maze',
      'execute as @e[type=marker,tag=maze-node,sort=random,limit=1] at @s run function generated:story/maze/create/_removerandomwall',
      'scoreboard players remove _batchleft maze 1',
      'execute unless score _batchleft maze matches 0 run function generated:story/maze/create/_removerandomwalls'
    ])

    addfunc('maze/create/_deletewall', [
      '# Delete wall between self and node marked maze-connect',
      `execute at @s facing entity @e[type=marker,tag=maze-node,tag=maze-connect] feet run fill ^${-((cellsize-1)/2-1)} ^${-((cellsize-1)/2-1)} ^${(cellsize-1)/2} ^${((cellsize-1)/2-1)} ^${((cellsize-1)/2-1)} ^${(cellsize-1)/2+1} air`,
      neighbors.map((x, i) => [
        // `execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-${i}] positioned ~${x[0]*(cellsize-1)/2} ~${x[1]*(cellsize-1)/2} ~${x[2]*(cellsize-1)/2} run fill ~${x[0] === 0 ? -(cellsize-5)/2 : 0} ~${x[1] === 0 ? -(cellsize-5)/2 : 0} ~${x[2] === 0 ? -(cellsize-5)/2 : 0} ~${x[0] === 0 ? (cellsize-5)/2 : x[0]} ~${x[1] === 0 ? (cellsize-5)/2 : x[1]} ~${x[2] === 0 ? (cellsize-5)/2 : x[2]} air`,
        `execute if entity @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-${i}] run tag @s add maze-connect-${i}`,
        `execute as @e[type=marker,tag=maze-node,tag=maze-connect,tag=maze-neighbor-${i}] run tag @s add maze-connect-${neighbors.length-i-1}`
      ]),
      'tag @e[type=marker,tag=maze-node] remove maze-connect'
    ])

    addfunc('maze/create/_removerandomwall', [
      '#> Remove a random neighboring wall',
      'function generated:story/maze/neighbors',
      '# Select random node in maze to remove wall between',
      'tag @e[type=marker,tag=maze-node,tag=maze-neighbor,sort=random,limit=1] add maze-connect',
      'execute as @s run function generated:story/maze/create/_deletewall'
    ])

    addfunc('maze/create/getpos', [
      '# Store position of a given node in grid coordinates',
      'execute store result score @s maze-xpos run data get entity @s Pos[0]',
      'execute store result score @s maze-ypos run data get entity @s Pos[1]',
      'execute store result score @s maze-zpos run data get entity @s Pos[2]',
      'scoreboard players add @s maze-xpos 1500',
      'scoreboard players remove @s maze-ypos 3',
      `scoreboard players operation @s maze-xpos /= ${cellsize} const`,
      `scoreboard players operation @s maze-ypos /= ${cellsize} const`,
      `scoreboard players operation @s maze-zpos /= ${cellsize} const`
    ])


    addfunc('maze/pathfind', [
      // 'kill @e[tag=maze-path-lit]',
      '# Cleanup',
      'schedule clear generated:story/maze/pathfind/selectcell',
      'tag @e[type=marker,tag=maze-node] remove path-visited',
      'tag @e[type=marker,tag=maze-node] remove path-activated',
      'scoreboard players set @e[type=marker,tag=maze-node] maze-pathHcost 2147483647',
      'scoreboard players set @e[type=marker,tag=maze-node] maze-pathTcost 2147483647',
      '# set Gpos root',
      'scoreboard players operation _goalx maze-pathGcost = @e[type=marker,tag=maze-node,tag=path-goal] maze-xpos',
      'scoreboard players operation _goaly maze-pathGcost = @e[type=marker,tag=maze-node,tag=path-goal] maze-ypos',
      'scoreboard players operation _goalz maze-pathGcost = @e[type=marker,tag=maze-node,tag=path-goal] maze-zpos',
      '# activate start',
      'scoreboard players set _tmpcost maze-pathHcost 0',
      'scoreboard players set _tmp maze-path-parent -1',
      'execute as @e[type=marker,tag=maze-node,tag=path-start] run function generated:story/maze/pathfind/activatecell',
      // 'scoreboard players set batchsize maze-path 1',
      // 'scoreboard players set _batchleft maze-path 0',
      'function generated:story/maze/pathfind/selectcell'


      // 'tag @e[type=marker,tag=maze-node] remove path-goal'
      // 'tag @e[type=marker,tag=maze-node] remove path-start'
    ])

    addfunc('maze/pathfind/selectcell', [
      // 'execute if score _batchleft maze-path matches 0 run say batch',
      // 'execute if score _batchleft maze-path matches 0 run scoreboard players operation _batchleft maze-path = batchsize maze-path',
      '# select the cell with the lowest cost',
      'scoreboard players set #MIN maze-pathTcost 2147483647',
      'scoreboard players operation #MIN maze-pathTcost < @e[type=marker,tag=maze-node,tag=path-activated] maze-pathTcost',
      '# visit all the minimum t cost cells',
      'execute as @e[type=marker,tag=maze-node,tag=path-activated] if score @s maze-pathTcost = #MIN maze-pathTcost at @s run function generated:story/maze/pathfind/visitcell',
      // 'scoreboard players remove _batchleft maze-path 1',
      // 'execute if score _batchleft maze-path matches 1.. unless entity @e[type=marker,tag=maze-node,tag=path-goal,tag=path-activated] run function generated:story/maze/pathfind/selectcell',
      // 'execute if score _batchleft maze-path matches 0 unless entity @e[type=marker,tag=maze-node,tag=path-goal,tag=path-activated] run schedule function generated:story/maze/pathfind/selectcell 1t',
      'execute unless entity @e[type=marker,tag=maze-node,tag=path-goal,tag=path-activated] run schedule function generated:story/maze/pathfind/selectcell 1t',
      '# Finalize path after finishing',
      'execute if entity @e[type=marker,tag=maze-node,tag=path-goal,tag=path-activated] run function generated:story/maze/pathfind/finalizepath'
    ])

    addfunc('maze/pathfind/visitcell', [
      // 'execute at @s run team join blue @e[tag=maze-path-lit,sort=nearest,limit=1]',
      '# This is now visited',
      'tag @s add path-visited',
      'tag @s remove path-activated',
      '# get neighbors',
      'function generated:story/maze/neighbors',
      'scoreboard players operation _tmpcost maze-pathHcost = @s maze-pathHcost',
      'scoreboard players add _tmpcost maze-pathHcost 1',
      neighbors.map((x, i)=>[
        '# update parent if this is closer',
        `scoreboard players set _tmp maze-path-parent ${neighbors.length-i-1}`,
        `execute as @e[type=marker,tag=maze-node,tag=!path-visited,tag=maze-neighbor-${i},tag=maze-connect-${neighbors.length-i-1}] if score @s maze-pathHcost > _tmpcost maze-pathHcost run function generated:story/maze/pathfind/activatecell`
      ])
    ])

    addfunc('maze/pathfind/activatecell', [
      '# Update parent',
      `scoreboard players operation @s maze-path-parent = _tmp maze-path-parent`,
      '#> update cost of given cell',
      'scoreboard players operation @s maze-pathHcost < _tmpcost maze-pathHcost',
      '# Calculate G cost if it has never been done before',
      'execute unless entity @s[tag=path-activated] as @s run function generated:story/maze/pathfind/getg',
      'scoreboard players operation @s maze-pathTcost = @s maze-pathHcost',
      'scoreboard players operation @s maze-pathTcost += @s maze-pathGcost',
      'tag @s add path-activated'
    ])

    addfunc('maze/pathfind/getg', [
      // 'execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,NoAI:1,Glowing:1,Tags:["maze-path-lit"]}',
      '#> Get G cost of a given marker',
      'execute as @s run function generated:story/maze/getpos',
      '# Use euclidian distance',
      'scoreboard players operation _tmpx maze-pathGcost = @s maze-xpos',
      'scoreboard players operation _tmpy maze-pathGcost = @s maze-ypos',
      'scoreboard players operation _tmpz maze-pathGcost = @s maze-zpos',
      '# Subtract distance of goal',
      'scoreboard players operation _tmpx maze-pathGcost -= _goalx maze-pathGcost',
      'scoreboard players operation _tmpy maze-pathGcost -= _goaly maze-pathGcost',
      'scoreboard players operation _tmpz maze-pathGcost -= _goalz maze-pathGcost',
      '# get absolute value',
      'execute if score _tmpx maze-pathGcost matches ..-1 run scoreboard players operation _tmpx maze-pathGcost *= -1 const',
      'execute if score _tmpy maze-pathGcost matches ..-1 run scoreboard players operation _tmpy maze-pathGcost *= -1 const',
      'execute if score _tmpz maze-pathGcost matches ..-1 run scoreboard players operation _tmpz maze-pathGcost *= -1 const',
      '# add to total cost',
      'scoreboard players operation @s maze-pathGcost = _tmpx maze-pathGcost',
      'scoreboard players operation @s maze-pathGcost += _tmpy maze-pathGcost',
      'scoreboard players operation @s maze-pathGcost += _tmpz maze-pathGcost'
    ])

    addfunc('maze/pathfind/finalizepath', [
      '#> Reverse the path to get from start to goal',
      '# First, clear the scoreboard',
      'scoreboard players reset @e[tag=maze-node] maze-path',
      'scoreboard players set length maze-path 0',
      'execute as @e[type=marker,tag=maze-node,tag=path-goal] run function generated:story/maze/pathfind/_pathgetnext'
    ])

    addfunc('maze/pathfind/_pathgetnext', [
      // 'execute at @s run team join magenta @e[tag=maze-path-lit,sort=nearest,limit=1]',
      '#> Propogate through path recursively',
      'scoreboard players operation @s maze-path = length maze-path',
      'scoreboard players add length maze-path 1',
      neighbors.map((x, i) => [
        `execute if score @s maze-path-parent matches ${i} at @s positioned ~${x[0]*(cellsize)} ~${x[1]*(cellsize)} ~${x[2]*(cellsize)} as @e[type=marker,tag=maze-node,distance=..0.01,sort=nearest,limit=1] run function generated:story/maze/pathfind/_pathgetnext`
      ])
    ])

    // WAVE FUNCTION STUFF

    const mazerows = 2;
    const mazecols = 24;
    const mazeorigin = [-1000, 10, 0];

    const rotations = [
      "NONE",
      "CLOCKWISE_90",
      "CLOCKWISE_180",
      "COUNTERCLOCKWISE_90"
    ]

    const reflections = [
      "NONE",
      "LEFT_RIGHT"
    ]

    addfunc('maze/create/wave/reset', [
      `forceload add ${mazeorigin[0]-(cellsize+1)/2} ${mazeorigin[2]-(cellsize+1)/2} ${mazeorigin[0]+15*(mazecols-1)+(cellsize+1)/2} ${mazeorigin[2]+15*(mazerows-1)+(cellsize+1)/2}`,
      `kill @e[tag=maze-tile]`,
      [...Array(mazecols)].map((xx, x) => (
        [...Array(mazerows)].map((zz, z) => [
          `summon marker ${mazeorigin[0]+15*x} ${mazeorigin[1]} ${mazeorigin[2]+15*z} {Tags:["maze-tile","maze-tile-init"]}`
        ])
      )),
      `execute as @e[tag=maze-tile-init] at @s run function generated:story/maze/create/wave/rotate`
    ])

    addfunc('maze/create/wave/rotate', [
      `tag @s remove maze-tile`,
      `setblock ~ ~-6 ~ minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"hitchhike:maze/tmptile",posX:-5,posY:1,posZ:-5,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:11,sizeY:11,sizeZ:11}`,
      `setblock ~ ~-7 ~ redstone_block`,
      `setblock ~ ~-7 ~ air`,
      reflections.map((ref, refi) => rotations.map((rot, roti) => {
        let i = refi * rotations.length + roti;
        if (i == 0) return [];
        let y = 15*i;
        let offsetx = (roti%2) ? 5 : -5;
        let offsetz = roti < 2 ? -5 : 5;

        return [
          `summon marker ~ ~${y} ~ {Tags:["maze-tile"]}`,
          `setblock ~ ${y-6} ~ minecraft:structure_block[mode=load]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"${ref}",mode:"LOAD",name:"hitchhike:maze/tmptile",posX:${roti ? offsetx : offsetz},posY:1,posZ:${roti ? offsetz : -offsetx},powered:0b,rotation:"${rot}",seed:0L,showair:0b,showboundingbox:1b,sizeX:11,sizeY:11,sizeZ:11}`,
          // `setblock ~ ${y-7} ~ redstone_block`,
          // `setblock ~ ${y-7} ~ air`
        ]
      }))
    ])
  })();
}