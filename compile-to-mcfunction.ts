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
  onTick: Lines
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
    onTick: [
      "# Start a conversation if it was selected",
      // TODO: Consider `mark` and `if`
      `execute at ${select.selected} run tag @a[tag=npc_selector,sort=nearest,limit=1] add ${playerTag}`,
      `tag ${select.player} remove npc_selector`,
      `tag ${select.selected} add speaking`,
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
            `${message.silent ? '# silent // ' : ''}execute at ${select.self} run playsound minecraft:entity.villager.ambient player ${select.eavesdropper} ~ ~ ~ 100`,
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
          `execute unless score dialogue-begun dialogue-status matches 1 store success score dialogue-begun dialogue-status if entity ${select.newPlayer} as ${select.self} if score @s dialogue-status matches ${dialogue.cond} run schedule function ${namespace}:${indexToFuncName(0)} 1t`
        ]
      }),
      `execute if score dialogue-begun dialogue-status matches 1 run tag ${select.newPlayer} add spoken-to`,
      `tag ${select.newPlayer} remove ${playerTag}`, //if dialogue failed, remove the playertag
      `execute if score dialogue-begun dialogue-status matches 0 run tag ${select.self} remove speaking`, // no dialogue to start, don't speak
      '',
      '# While in a conversation, make eye contact with the player.',
      `execute as ${select.speaking} at @s run tp @s[tag=!npc-unface] ~ ~ ~ facing entity ${select.player}`
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
}