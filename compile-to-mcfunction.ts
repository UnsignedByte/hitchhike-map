import { Lines , schedule, hash } from './main.ts'
import { Npc, Quest, QuestCondition } from './parse-yaml.ts'
import { CONSTS } from './consts.ts'
import { item } from './item.ts'

item; // prevent typescript from eliding this import because i hate typescript and it is cringe

const npc = (val: string): string => `@e[type=villager,tag=npc-${val}, limit=1]`;

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

export function noteToPitch(note: number): number {
  let v = 2**((note-12)/12);
  return (v > 2) ? 2 : v;
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
  functions: Record<string, Lines>,
  loadpos: [number, number]
} {
  name = eval(`\`${name}\``);
  const npcTag = `npc-${id}`
  const playerTag = `victim-of-dialogue-by-${id}`
  // Prevent the dialogue from immediately restarting

  const START_DIST = 4
  const LEAVE_DIST = 10
  const HEAR_DIST = 25

  const select = {
    self: `@e[type=villager,tag=${npcTag}, limit=1]`,
    selected: `@e[type=villager, tag=${npcTag}, tag=selected_npc, tag=!speaking, limit=1]`,
    speaking: `@e[type=villager, tag=${npcTag}, tag=speaking, limit=1]`,

    player: `@a[tag=${playerTag}, limit=1]`,
    newPlayer: `@a[tag=${playerTag}, tag=!spoken-to, limit=1]`,
    eavesdropper: `@a[tag=npc-eavesdropper]`
  }

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
                fulltext === "__NONE__" ? `` : `execute at ${select.self} run tellraw ${select.eavesdropper} ${JSON.stringify([
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
          `execute unless score dialogue-begun dialogue-status matches 1 run tag @s remove speaking`, // no dialogue to start, don't speak
        ];

        return `execute as @s[tag=${npcTag}] at @s run function generated:npc/${id}/tick`;
      })()
    ],
    speaking: [
      '# While in a conversation, make eye contact with the player.',
      `tp @s[tag=${npcTag}] ~ ~ ~ facing entity ${select.player}`
    ],
    functions,
    loadpos: [Math.floor(x), Math.floor(z)]
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
      color:"dark_gray",
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
export function story(files: Record<string, Lines>, functions: Record<string, Lines>, reset: Lines[], load: Lines[], tick: Lines[]) {
  function addfunc(src: string, cmds: Lines[]) {
    functions[`story/${src}`] = cmds;
  }

  function genseq(src: string, seq: any) {
    addfunc(src, [...(seq.cmds ?? []), ...(seq.next ?? []).map((x: any, i: number)=>{
      genseq(`${src}-${i}`, x.seq);
      return (x.wait === 0) ? `function generated:story/${src}-${i}` : `schedule function generated:story/${src}-${i} ${x.wait}t`
    })])
  }


  // intro stuff
  (()=> {

    genseq('intro/start', {
      cmds: [
        `weather rain 1000000`,
        `time set 22000`
      ],
      next: [
        {
          seq: {
            cmds: [
              'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1.5'
            ],
            next: [
              {
                seq: {
                  cmds: [
                    'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1.6'
                  ],
                  next: [
                  ]
                },
                wait: 4
              },
              {
                seq: {
                  cmds: [
                    'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1.8'
                  ],
                  next: [
                  ]
                },
                wait: 24
              },
              {
                seq: {
                  cmds: [
                    'tellraw @a [{"text":"<"},{"text":"Glidiun","color":"#3ab5b2","bold":true},{"text":"> What did you see?"}]'
                  ],
                  next: [
                  ]
                },
                wait: 5
              },
              {
                seq: {
                  cmds: [
                    'playsound minecraft:entity.squid.ambient block @a 1005.00 61.0 58.0 5 2'
                  ],
                  next: [
                    {
                      seq: {
                        cmds: [
                          'playsound minecraft:entity.squid.ambient block @a 1005.00 61.0 58.0 5 1.7'
                        ],
                        next: [
                        ]
                      },
                      wait: 5
                    },
                    {
                      seq: {
                        cmds: [
                          'playsound minecraft:entity.squid.ambient block @a 1005.00 61.0 58.0 5 1.3'
                        ],
                        next: [
                        ]
                      },
                      wait: 15
                    },
                    {
                      seq: {
                        cmds: [
                          'playsound minecraft:entity.squid.ambient block @a 1005.00 61.0 58.0 5 2'
                        ],
                        next: [
                        ]
                      },
                      wait: 18
                    },
                    {
                      seq: {
                        cmds: [
                          'tellraw @a [{"text":"<"},{"text":"Sefuloo","color":"#708899","bold":true},{"text":"> A... a circle. I still can\'t believe it!"}]'
                        ],
                        next: [
                        ]
                      },
                      wait: 5
                    },
                    {
                      seq: {
                        cmds: [
                          'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1.5'
                        ],
                        next: [
                          {
                            seq: {
                              cmds: [
                                'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1.7'
                              ],
                              next: [
                              ]
                            },
                            wait: 3
                          },
                          {
                            seq: {
                              cmds: [
                                'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1.2'
                              ],
                              next: [
                              ]
                            },
                            wait: 11
                          },
                          {
                            seq: {
                              cmds: [
                                'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 2'
                              ],
                              next: [
                              ]
                            },
                            wait: 20
                          },
                          {
                            seq: {
                              cmds: [
                                'tellraw @a [{"text":"<"},{"text":"Glidiun","color":"#3ab5b2","bold":true},{"text":"> What\'s a \\"circle\\"?"}]'
                              ],
                              next: [
                              ]
                            },
                            wait: 5
                          },
                          {
                            seq: {
                              cmds: [
                                'playsound minecraft:entity.squid.ambient block @a 1005.00 61.0 58.0 5 1.8'
                              ],
                              next: [
                                {
                                  seq: {
                                    cmds: [
                                      'playsound minecraft:entity.squid.ambient block @a 1005.00 61.0 58.0 5 1.2'
                                    ],
                                    next: [
                                    ]
                                  },
                                  wait: 5
                                },
                                {
                                  seq: {
                                    cmds: [
                                      'playsound minecraft:entity.squid.ambient block @a 1005.00 61.0 58.0 5 1.1'
                                    ],
                                    next: [
                                    ]
                                  },
                                  wait: 10
                                },
                                {
                                  seq: {
                                    cmds: [
                                      'playsound minecraft:entity.squid.ambient block @a 1005.00 61.0 58.0 5 1.5'
                                    ],
                                    next: [
                                    ]
                                  },
                                  wait: 35
                                },
                                {
                                  seq: {
                                    cmds: [
                                      'playsound minecraft:entity.squid.ambient block @a 1005.00 61.0 58.0 5 1.3'
                                    ],
                                    next: [
                                    ]
                                  },
                                  wait: 38
                                },
                                {
                                  seq: {
                                    cmds: [
                                      'tellraw @a [{"text":"<"},{"text":"Sefuloo","color":"#708899","bold":true},{"text":"> A shape that seems impossible. A shape that\'s... round."}]'
                                    ],
                                    next: [
                                    ]
                                  },
                                  wait: 5
                                },
                                {
                                  seq: {
                                    cmds: [
                                      'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1.3'
                                    ],
                                    next: [
                                      {
                                        seq: {
                                          cmds: [
                                            'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1.8'
                                          ],
                                          next: [
                                          ]
                                        },
                                        wait: 6
                                      },
                                      {
                                        seq: {
                                          cmds: [
                                            'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1.1'
                                          ],
                                          next: [
                                          ]
                                        },
                                        wait: 12
                                      },
                                      {
                                        seq: {
                                          cmds: [
                                            'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1.4'
                                          ],
                                          next: [
                                          ]
                                        },
                                        wait: 15
                                      },
                                      {
                                        seq: {
                                          cmds: [
                                            'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1'
                                          ],
                                          next: [
                                          ]
                                        },
                                        wait: 52
                                      },
                                      {
                                        seq: {
                                          cmds: [
                                            'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1.7'
                                          ],
                                          next: [
                                          ]
                                        },
                                        wait: 56
                                      },
                                      {
                                        seq: {
                                          cmds: [
                                            'playsound minecraft:entity.glow_squid.ambient block @a 1005.00 61.0 61.0 5 1.3'
                                          ],
                                          next: [
                                          ]
                                        },
                                        wait: 60
                                      },
                                      {
                                        seq: {
                                          cmds: [
                                            'tellraw @a [{"text":"<"},{"text":"Glidiun","color":"#3ab5b2","bold":true},{"text":"> You\'re crazy. You\'re losing your marbles!"}]'
                                          ],
                                          next: [
                                          ]
                                        },
                                        wait: 5
                                      }
                                    ]
                                  },
                                  wait: 80
                                }
                              ]
                            },
                            wait: 50
                          }
                        ]
                      },
                      wait: 60
                    }
                  ]
                },
                wait: 40
              }
            ]
          },
          wait: 10
        },
        {
          seq: {
            cmds: [
              `gamerule doDaylightCycle true`,
              `playsound minecraft:entity.lightning_bolt.thunder weather @a 1038.06 123.00 231.74 100 1.0`,
              `playsound minecraft:entity.lightning_bolt.thunder weather @a 1192.00 178.00 470.72 100 0.3`,
              `playsound minecraft:entity.lightning_bolt.thunder weather @a 944.78 72.00 -137.30 100 0.5`,
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
              wait: 2500
            },
            {
              seq: {
                cmds: [
                  `# Stop daylight cycle at noon`,
                  `gamerule doDaylightCycle false`,
                  'time set 6000'
                ]
              },
              wait: 8000
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
          },
          wait: 360
        }
      ]
    })

    addfunc('intro/_resetstorages', [
      `setblock 1024 66 61 air`,
      `setblock 1024 66 61 minecraft:barrel[facing=west,open=false]{Items:[${toSnbt(Object.assign({Count:'1b',Slot:'4b'}, item.citymap))},${toSnbt({
        Count:'1b',
        Slot:'13b',
        id:'"minecraft:paper"',
        tag: {
          display: {
            Name: rawJson({
              text: "To-Do List",
              color: "aqua",
              bold: true
            }),
            Lore:`[${rawJson([""])}, ${rawJson([{
              text:">>> wish sis a happy birthday!!!",
              color: "red",
              underlined: true
            }])}, ${rawJson([{
              text:"> buy groceries",
              color: "white",
              strikethrough: true
            }])}, ${rawJson([{
              text:"> meet with percy",
              color: "white"
            }])}, ${rawJson([{
              text:"> finish bio lab report",
              color: "white"
            }])}]`
          },
          HideFlags:127
        }
      })},${toSnbt(Object.assign({Count:'1b',Slot:'22b'}, item.housekey))}]}`,
      `setblock 1005 59 62 air`,
      `setblock 1005 59 62 minecraft:chest[facing=east,type=single,waterlogged=false]{Items:[${toSnbt(Object.assign({Count:'1b',Slot:'13b'}, item.tvremote))}]}`
    ]);

    addfunc('intro/lock_back_door', [
      `execute unless entity @a[x=1004,y=65,z=61,dx=6,dy=1,dz=4,nbt={SelectedItem:${toSnbt(item.housekey)}}] run function generated:story/intro/close_back_door`,
      `execute if entity @a[x=1004,y=65,z=61,dx=6,dy=1,dz=4,nbt={SelectedItem:${toSnbt(item.housekey)}}] run schedule function hitchhike:story/intro/unlock_external_doors 1t`
    ])

    addfunc('intro/close_back_door', [
      `execute unless block 1007 65 65 minecraft:dark_oak_door[facing=south,half=lower,hinge=left,open=false,powered=false] run title @a actionbar [{"text":"The back door is locked. Maybe look for a key?"}]`,
      `execute unless block 1007 65 65 minecraft:dark_oak_door[facing=south,half=lower,hinge=left,open=false,powered=false] run setblock 1009 64 65 minecraft:redstone_block`,
      `setblock 1009 64 65 air`
    ])

    addfunc('intro/lock_front_door', [
      `execute unless entity @a[x=1011,y=65,z=53,dz=4,dx=3,nbt={SelectedItem:${toSnbt(item.housekey)}}] run function generated:story/intro/close_front_door`,
      `execute if entity @a[x=1011,y=65,z=53,dz=4,dx=3,nbt={SelectedItem:${toSnbt(item.housekey)}}] run schedule function hitchhike:story/intro/unlock_external_doors 1t`
    ])

    addfunc('intro/close_front_door', [
      `execute unless block 1012 65 52 minecraft:dark_oak_door[facing=north,half=lower,hinge=left,open=false,powered=false] run title @a actionbar [{"text":"The front door is locked. Maybe look for a key?"}]`,
      `execute unless block 1012 65 52 minecraft:dark_oak_door[facing=north,half=lower,hinge=left,open=false,powered=false] run setblock 1014 63 51 minecraft:redstone_block`,
      `setblock 1014 63 51 air`
    ])

    addfunc('intro/_settv', [
      [...Array(6).keys()].map(x=>
        `data modify entity @e[type=glow_item_frame,x=1005,dx=0,y=${61 - x % 2},dy=0,z=${60 - Math.floor(x / 2)},dz=0,limit=1] Item.tag.map set value ${7+x}`
      )
    ])

    addfunc('intro/_resettv', [
      [...Array(6).keys()].map(x=>
        `data modify entity @e[type=glow_item_frame,x=1005,dx=0,y=${61 - x % 2},dy=0,z=${60 - Math.floor(x / 2)},dz=0,limit=1] Item.tag.map set value ${1+x}`
      )
    ])

    addfunc('intro/await_start', [
      'execute unless entity @e[type=player,nbt={SelectedItem:{tag:{tvremote:1b}}}] as @e[tag=remote_rightclick_detect] at @s run tp @s ~ 0 ~',
      'execute as @e[type=player,nbt={SelectedItem:{tag:{tvremote:1b}}}] at @s run function generated:story/intro/tp_remote_holder',
      'execute as @e[tag=remote_rightclick_detect,nbt={HandItems:[{tag:{tvremote:1b}}]}] at @s run function generated:story/intro/_start',
      '',
      'execute unless score start story-intro matches 1 run schedule function generated:story/intro/await_start 1t'
    ])

    addfunc('intro/_start', [
      `execute positioned ~ ~-0.7 ~ run give @p ${toGive(item.tvremote)}`,
      `kill @s`,
      'function hitchhike:story/intro/start'
    ])

    addfunc('intro/tp_remote_holder', [
      'execute unless entity @e[tag=remote_rightclick_detect] run summon armor_stand ~ ~0.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,Tags:["remote_rightclick_detect"],DisabledSlots:4079422}',
      'tp @e[tag=remote_rightclick_detect] ~ ~0.7 ~'
    ])
  })();

  // simon stuff
  (()=> {

    genseq('simon/drink', {
      cmds: [
        `data modify entity @e[tag=npc-simon,limit=1] HandItems[0] set value ${toSnbt(Object.assign({Count:'1b'}, item.store.sold.safeway.lacroix))}`,
        `execute at @e[tag=npc-simon,limit=1] run clear @a[nbt={Inventory:[${toSnbt(item.store.sold.safeway.lacroix)}]},sort=nearest,limit=1] ${toGive(item.store.sold.safeway.lacroix)}`,
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

    const primes = [2, 3, 5, 7, 11, 13, 17];

    const mobs: Record<string, string[]> = {
      common: [
        `summon zombie ~ ~ ~ {NoGravity:0b,Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:0b,Health:4f,IsBaby:1b,Tags:["maze-common","maze-mob","maze-mob-null"],CustomName:'{"text":"nullptr","color":"red","bold":true}',ArmorItems:[{},{},{},{id:'minecraft:barrier',Count:1b}],Attributes:[{Name:generic.max_health,Base:4},{Name:generic.follow_range,Base:16},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:4}]}`,
        `summon cave_spider ~ ~ ~ {DeathLootTable:"minecraft:empty",FallFlying:1b,PersistenceRequired:0b,Health:10f,Tags:["maze-common","maze-mob","maze-mob-gridbug"],CustomName:'{"text":"gridbug","color":"red","bold":true}',Attributes:[{Name:generic.max_health,Base:10},{Name:generic.follow_range,Base:16},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:3}]}`,
        `summon bee ~ ~ ~ {Silent:1b,Invulnerable:0b,AngerTime:2147483647,Tags:["maze-mob","maze-host","maze-mob-walrus"],Passengers:[{id:"minecraft:area_effect_cloud",CustomNameVisible:1b,Duration:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:zombie",Silent:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:2f,IsBaby:1b,Tags:["maze-mob"],ArmorItems:[{},{},{},{id:'minecraft:player_head',Count:1b,tag:{SkullOwner:{Id:[I;-1585053926,-215070752,-1100916127,789778227],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDdiYWVkYWY5YWQ5NTQ3NGViMWJlNTg5MjQ0NDVkZmM3N2JiZGMyNTJjYzFjODE2NDRjZjcxNTRjNDQxIn19fQ=='}]}}}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2},{Name:generic.attack_damage,Base:1}]}],CustomName:'{"text":"Walrus Operator","color":"red"}'}],ArmorItems:[{},{},{},{id:'minecraft:barrier',Count:1b}],ActiveEffects:[{Id:11b,Amplifier:5b,Duration:2147483647},{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:0}]}`,
        `summon skeleton ~ ~ ~ {Health:15f,Tags:["maze-mob","maze-symlink"],CustomName:'{"text":"SymLink","color":"red"}',HandItems:[{id:"minecraft:bow",Count:1b},{}],Attributes:[{Name:generic.movement_speed,Base:0.2}]}`,
        `summon zombie ~ ~ ~ {Silent:1b,Invulnerable:0b,PersistenceRequired:1b,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:guardian",Health:5f,Tags:["maze-mob","maze-common","maze-mob-dsstore"],CustomName:'{"text":".DS_Store","color":"red"}',Attributes:[{Name:generic.max_health,Base:5}]}],CustomName:'{"text":"SymLink","color":"red"}',ArmorItems:[{id:'minecraft:netherite_boots',Count:1b,tag:{Enchantments:[{}]}},{},{},{}],ActiveEffects:[{Id:11b,Amplifier:5b,Duration:2147483647},{Id:14b,Amplifier:0b,Duration:2147483647}],Attributes:[{Name:generic.follow_range,Base:16},{Name:generic.movement_speed,Base:0.5}]}`
      ],
      rare: [
        `summon wither_skeleton ~ ~ ~ {Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:0b,Health:60f,Tags:["maze-rare","maze-mob","maze-mob-ip"],CustomName:'{"text":"8.8.8.8","color":"dark_red","bold":true}',HandItems:[{id:'minecraft:cookie',Count:1b,tag:{Enchantments:[{id:'minecraft:sharpness',lvl:5s},{id:'minecraft:knockback',lvl:1s}]}},{id:'minecraft:cookie',Count:1b,tag:{Enchantments:[{id:'minecraft:sharpness',lvl:5s},{id:'minecraft:knockback',lvl:1s}]}}],ArmorItems:[{},{},{},{id:'minecraft:tinted_glass',Count:1b}],Attributes:[{Name:generic.max_health,Base:60},{Name:generic.follow_range,Base:32},{Name:generic.knockback_resistance,Base:0.8},{Name:generic.movement_speed,Base:0.15},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:20}]}`,
        `summon vindicator ~ ~ ~ {Silent:1b,LeftHanded:1b,Health:80f,DeathLootTable:"minecraft:empty",Tags:["maze-mob-johnny","maze-mob","maze-rare"],CustomName:'{"text":"Johnny\\'); DROP ANVIL Entities;--","color":"dark_red","bold":true}',HandItems:[{id:"minecraft:anvil",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_trapdoor",Count:1b}],Attributes:[{Name:generic.max_health,Base:80},{Name:generic.follow_range,Base:20},{Name:generic.knockback_resistance,Base:0.8},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:5},{Name:generic.attack_knockback,Base:1}]}`,
        `summon bee ~ ~ ~ {Silent:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:8f,AngerTime:2147483647,Tags:["maze-mob","maze-rare","maze-mob-stack"],Passengers:[{id:"minecraft:bee",Silent:1b,CanPickUpLoot:0b,Health:8f,AngerTime:2147483647,Tags:["maze-mob","maze-rare","maze-mob-stack"],Passengers:[{id:"minecraft:bee",Silent:1b,CanPickUpLoot:0b,Health:8f,AngerTime:2147483647,Tags:["maze-mob","maze-rare","maze-mob-stack"],Passengers:[{id:"minecraft:bee",Silent:1b,CanPickUpLoot:0b,Health:8f,AngerTime:2147483647,Tags:["maze-mob","maze-rare","maze-mob-stack"],Passengers:[{id:"minecraft:bee",Silent:1b,CanPickUpLoot:0b,Health:8f,AngerTime:2147483647,Tags:["maze-mob","maze-rare","maze-mob-stack"],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:8},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:8},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:8},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:8},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:8},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}`
      ],
      ip_minion: [
        `summon bee ~ ~ ~ {Silent:1b,Invulnerable:1b,AngerTime:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:area_effect_cloud",CustomNameVisible:1b,Duration:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:zombie",Silent:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:2f,IsBaby:1b,Tags:["maze-mob"],ArmorItems:[{},{},{},{id:"minecraft:red_stained_glass",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2},{Name:generic.attack_damage,Base:1}]}],CustomName:'{"text":"Malicious Packet","color":"red"}'}],ArmorItems:[{},{},{},{id:'minecraft:barrier',Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:0}]}`,
        `summon bee ~ ~ ~ {Silent:1b,Invulnerable:1b,AngerTime:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:area_effect_cloud",CustomNameVisible:1b,Duration:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:zombie",Silent:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:2f,IsBaby:1b,Tags:["maze-mob"],HandItems:[{id:"minecraft:cookie",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2},{Name:generic.attack_damage,Base:1}]}],CustomName:'{"text":"Tracking Cookie","color":"#875822"}'}],ArmorItems:[{},{},{},{id:'minecraft:barrier',Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:0}]}`,
      ],
      magma: [
        `summon magma_cube ~ ~ ~ {Health:5f,Size:0,Tags:["maze-mob"],CustomName:'{"text":"(Core Dumped)","color":"red","bold":true}',Attributes:[{Name:generic.max_health,Base:5}]}`,
        `summon bee ~ ~ ~ {Silent:1b,Invulnerable:1b,AngerTime:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:area_effect_cloud",CustomNameVisible:1b,Duration:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:zombie",Silent:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:2f,IsBaby:1b,Tags:["maze-mob","maze-headswap"],ArmorItems:[{},{},{},{id:'minecraft:red_stained_glass',Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2},{Name:generic.attack_damage,Base:1}]}],CustomName:'{"text":"error C2664: \\'void std::vector<block,std::allocator<_Ty>>::push_back(const block &)\\': cannot convert argument 1 from \\'std::_Vector_iterator<std::_Vector_val<std::_Simple_types<block>>>\\' to \\'block &&\\'","color":"red"}'}],ArmorItems:[{},{},{},{id:'minecraft:barrier',Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:0}]}`
      ],
      stackoverflow: [
        `summon bee ~ ~ ~ {Silent:1b,DeathLootTable:"minecraft:empty",Health:5f,AngerTime:2147483647,Tags:["maze-mob","maze-mob-stackoverflow"],CustomName:'{"text":"StackOverflow","color":"red"}',Attributes:[{Name:generic.max_health,Base:5},{Name:generic.follow_range,Base:16},{Name:generic.attack_damage,Base:2}]}`
      ],
      garbagecollector_minion: [
        `summon pillager ~ ~ ~ {Tags:["maze-mob"],CustomName:'{"text":"free(void* ptr)","color":"red","bold":true}',HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}`,
        `summon vindicator ~ ~ ~ {Tags:["maze-mob"],CustomName:'{"text":"operator delete (void* ptr)","color":"red","bold":true}',HandItems:[{id:"minecraft:iron_axe",Count:1b},{}]}`
      ]
    }

    schedule([
      `execute if score enabled maze matches 1 as @e[tag=maze-headswap] run function generated:story/maze/mobs/move/magma/swaphead`
    ], 20, functions)

    const swap_items = ['red_stained_glass', 'barrier', 'melon_slice', 'apple', 'redstone_block', 'red_mushroom', 'tnt', 'red_mushroom_block', 'red_dye', 'fermented_spider_eye', 'poppy', 'red_shulker_box']

    addfunc('maze/mobs/move/magma/swaphead', [
      `scoreboard players set _rngm vars ${swap_items.length}`,
      `function generated:rng/rng`,
      swap_items.map((x, i)=>`execute if score rng vars matches ${i} run data modify entity @s ArmorItems[3] set value {id:"minecraft:${x}",Count:1b}`)
    ])

    functions[`story/maze/mobs/move`] = ``;

    const bosses: Record<string, any> = {
      segfault: {
        summon: `summon magma_cube ~ ~ ~ {PersistenceRequired:1b,Health:2048f,Size:3,Tags:["maze-mob","maze-boss","maze-boss-segfault"],CustomName:'{"text":"Segmentation Fault","color":"dark_purple","bold":true}',Attributes:[{Name:generic.max_health,Base:2048},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:30}]}`,
        health: 150,
        stages: [
          {
            moves: [
              [
                `execute positioned ~ ~1 ~ run function generated:story/maze/mobs/boss/segfault/summon_magma`
              ],
              [
                `execute positioned ~ ~1 ~ run function generated:story/maze/mobs/boss/segfault/initiate_arrows`
              ]
            ],
            init: [
            ]
          },
          {
            moves: [
              [
                `execute positioned ~ ~1 ~ run function generated:story/maze/mobs/boss/segfault/summon_magma`
              ],
              [
                `execute positioned ~ ~1 ~ run function generated:story/maze/mobs/boss/segfault/initiate_arrows`
              ],
              [
                `summon area_effect_cloud ~ ~ ~ {Particle:"flame",ReapplicationDelay:20,Radius:1f,RadiusPerTick:0.1f,RadiusOnUse:-1f,Duration:200,DurationOnUse:0f,Effects:[{Id:7b,Amplifier:1b,Duration:100}],CustomName:'{"text":"Segmentation Fault","color":"dark_purple","bold":true}'}`,
                `effect give @s resistance 10 10 true`,
                `playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 10 0.3`
              ],
              [
                `execute positioned ~ ~1 ~ run function generated:story/maze/mobs/boss/segfault/summon_sprayturrets`
              ]
            ],
            init: [
              'effect give @s resistance 1000000 0 true',
              'effect give @s speed 1000000 0 true'
            ]
          },
          {
            moves: [
              [
                `execute positioned ~ ~1 ~ run function generated:story/maze/mobs/boss/segfault/initiate_arrows`
              ],
              [
                `summon area_effect_cloud ~ ~ ~ {Particle:"flame",ReapplicationDelay:20,Radius:1f,RadiusPerTick:0.1f,RadiusOnUse:-1f,Duration:200,DurationOnUse:0f,Effects:[{Id:7b,Amplifier:1b,Duration:100}]}`,
                `effect give @s resistance 10 10 true`,
                `playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 10 0.3`
              ],
              [
                `execute positioned ~ ~1 ~ run function generated:story/maze/mobs/boss/segfault/summon_sprayturrets`
              ],
              [
                `execute positioned ~ ~1 ~ run function generated:story/maze/mobs/boos/segfault/summon_firesource`
              ]
            ],
            init: [
              'effect give @s resistance 1000000 1 true',
              'effect give @s strength 1000000 0 true'
            ]
          }
        ]
      },
      explorer: {
        summon: `summon iron_golem ~ ~ ~ {PersistenceRequired:1b,CustomNameVisible:1b,Health:2048f,AngerTime:2147483647,Tags:["maze-mob","maze-boss","maze-boss-explorer"],CustomName:'{"text":"Internet Explorer","color":"aqua","bold":true}',Attributes:[{Name:generic.max_health,Base:2048},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.15},{Name:generic.attack_damage,Base:15},{Name:generic.armor,Base:30},{Name:generic.armor_toughness,Base:4},{Name:generic.attack_knockback,Base:5}]}`,
        health: 300,
        stages: [
          {
            moves: [
              [
                `execute as @s at @s run function generated:story/maze/mobs/boss/explorer/start_freezefield`
              ],
              [
                (()=>{
                  let t = [];

                  for (let x = 0; x < 9; x++) {
                    let xdeg = x*40;

                    let xrad = xdeg*Math.PI/180;

                    let s = 5;
                    t.push(`summon area_effect_cloud ~${(-s*Math.sin(xrad)).toFixed(4)} ~ ~${(s*Math.cos(xrad)).toFixed(4)} {Particle:"block ice",ReapplicationDelay:0,Radius:2f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:100,DurationOnUse:0f,Effects:[{Id:2b,Amplifier:3b,Duration:40},{Id:4b,Amplifier:3b,Duration:40},{Id:8b,Amplifier:128b,Duration:40},{Id:18b,Amplifier:3b,Duration:40},{Id:20b,Amplifier:2b,Duration:40}]}`);
                  }

                  schedule('execute as @e[tag=maze-freezefield] at @s run function generated:story/maze/mobs/boss/explorer/tick_freezefield', 5, functions);

                  return [
                    t
                  ]
                })()
              ]
            ],
            init: [
            ]
          },
          {
            moves: [
              [
                `execute as @s at @s run function generated:story/maze/mobs/boss/explorer/start_freezefield`
              ],
              [
                `execute as @s at @s positioned ~ ~1 ~ rotated ~ 0 run function generated:story/maze/mobs/boss/explorer/summon_wave`
              ]
            ],
            init: [
              'effect give @s speed 1000000 0 true'
            ]
          }
        ]
      },
      garbagecollector: {
        summon: `summon ravager ~ ~ ~ {PersistenceRequired:1b,CustomNameVisible:1b,Health:2048f,Tags:["maze-mob","maze-boss","maze-boss-garbagecollector"],CustomName:'{"text":"Garbage Collector","color":"dark_green","bold":true}',Attributes:[{Name:generic.max_health,Base:2048},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.05},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:30},{Name:generic.armor_toughness,Base:4},{Name:generic.attack_knockback,Base:0}]}`,
        health: 400,
        stages: [
          {
            moves: [
              [
                `execute as @e[tag=maze-mob,tag=!maze-boss,distance=..3,sort=random,limit=10] at @s run summon marker ~ ~ ~ {Tags:["maze-deletion-mark"]}`
              ],
              [
                `execute at @e[tag=maze-mob,tag=!maze-boss,distance=..7,sort=random,limit=10] run summon marker ~ ~ ~ {Tags:["maze-garbagecollector-minion-summon"]}`
              ]
            ],
            init: [
            ]
          },
          {
            moves: [
              [
                `execute as @e[tag=maze-mob,tag=!maze-boss,distance=..7,sort=random,limit=10] at @s run summon marker ~ ~ ~ {Tags:["maze-deletion-mark"]}`
              ],
              [
                `execute positioned ~ ~1 ~ run function generated:story/maze/mobs/boss/garbagecollector/summon_warper`
              ],
              [
                `execute at @e[tag=maze-mob,tag=!maze-boss,distance=..7,sort=random,limit=10] run summon marker ~ ~ ~ {Tags:["maze-garbagecollector-minion-summon"]}`
              ]
            ],
            init: [
              `data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base set value 9d`,
              `data modify entity @s Attributes[{Name:"minecraft:generic.attack_knockback"}].Base set value 5d`
            ]
          },
          {
            moves: [
              [
                `execute as @e[tag=maze-mob,tag=!maze-boss,distance=..10,sort=random,limit=10] at @s run summon marker ~ ~ ~ {Tags:["maze-deletion-mark"]}`
              ],
              [
                `execute positioned ~ ~1 ~ run function generated:story/maze/mobs/boss/garbagecollector/summon_warper`
              ],
              [
                `execute at @e[tag=maze-mob,tag=!maze-boss,distance=..7,sort=random,limit=10] run summon marker ~ ~ ~ {Tags:["maze-garbagecollector-minion-summon"]}`
              ]
            ],
            init: [
              `data modify entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base set value 12d`
            ]
          }
        ]
      }
    }

    schedule([
      `execute as @e[tag=maze-garbagecollector-minion-summon] at @s run function generated:story/maze/mobs/boss/garbagecollector/summoner_tick`,
      'execute as @e[tag=maze-warp-display] at @s run function generated:story/maze/mobs/boss/garbagecollector/warp_display',
      'execute as @e[tag=maze-warp-root] at @s run function generated:story/maze/mobs/boss/garbagecollector/warp_inward'
    ], 5, functions)
    schedule('execute as @e[tag=maze-deletion-mark] at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark', 10, functions)

    addfunc(`maze/mobs/boss/garbagecollector/summoner_tick`, [
      `scoreboard players add @s maze-weapon-age 1`,
      `particle minecraft:poof ~ ~ ~ 0.2 0.5 0.2 0 10`,
      `execute if score @s maze-weapon-age matches 20.. at @s run function generated:story/maze/mobs/summon/garbagecollector_minion`,
      `execute if score @s maze-weapon-age matches 20.. run playsound minecraft:entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1.3`,
      'kill @s[scores={maze-weapon-age=20..}]'
    ])

    addfunc(`maze/mobs/boss/garbagecollector/summon_warper`, [
      (()=>{
        let t = [];

        for (let x = 0; x < 18; x++) {
          for (let y = 0; y < 9; y++) {
            let xdeg = x*20;
            let ydeg = y*20-90;

            let xrad = xdeg*Math.PI/180;
            let yrad = ydeg*Math.PI/180;

            let s = 5;
            t.push(`summon marker ~${(-s*Math.cos(yrad)*Math.sin(xrad)).toFixed(4)} ~${(s*Math.sin(yrad)).toFixed(4)} ~${(s*Math.cos(yrad)*Math.cos(xrad)).toFixed(4)} {Tags:["maze-warp-display","maze-warp-display-init"]}`);
          }
        }

        schedule('execute as @e[tag=maze-freezefield] at @s run function generated:story/maze/mobs/boss/explorer/tick_freezefield', 5, functions);

        return [
          `summon marker ~ ~ ~ {Tags:["maze-warp-root","maze-warp-root-init"]}`,
          t,
          `execute as @e[tag=maze-warp-display-init] at @s facing entity @e[tag=maze-warp-root-init,limit=1] feet run tp @s ~ ~ ~ ~ ~`,
          'tag @e remove maze-warp-root-init',
          'tag @e remove maze-warp-display-init'
        ];
      })()
    ])

    addfunc(`maze/mobs/boss/garbagecollector/warp_display`, [
      `particle minecraft:block barrier ~ ~ ~ 0 0 0 0 10`,
      `tp @s ^ ^ ^0.5`,
      `scoreboard players add @s maze-weapon-age 1`,
      `scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age`,
      `scoreboard players operation #tmp maze-weapon-age %= 10 const`,
      `execute if score #tmp maze-weapon-age matches 0 run tp @s ^ ^ ^-5`,
      'execute if score @s maze-weapon-age matches 40.. run kill @s'
    ])

    addfunc('maze/mobs/boss/garbagecollector/warp_inward', [
      `scoreboard players add @s maze-weapon-age 1`,
      `scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age`,
      `scoreboard players operation #tmp maze-weapon-age %= 10 const`,
      `execute if score @s maze-weapon-age matches 0..9 run playsound minecraft:entity.shulker.teleport hostile @a ~ ~ ~ 0.5 0.3`,
      `execute if score @s maze-weapon-age matches 10..19 run playsound minecraft:entity.shulker.teleport hostile @a ~ ~ ~ 0.5 0.6`,
      `execute if score @s maze-weapon-age matches 20..29 run playsound minecraft:entity.shulker.teleport hostile @a ~ ~ ~ 0.5 0.9`,
      `execute if score @s maze-weapon-age matches 30..39 run playsound minecraft:entity.shulker.teleport hostile @a ~ ~ ~ 0.5 1.2`,
      'execute if score @s maze-weapon-age matches 40.. run tp @e[tag=maze-mob,distance=..5,tag=!maze-boss] @s',
      'execute if score @s maze-weapon-age matches 40.. run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 0.8',
      `execute if score @s maze-weapon-age matches 40.. run kill @s`,
      `effect give @e[tag=!maze-boss,tag=maze-mob,distance=..5] slowness 1 3 true`,
      `effect give @e[tag=!maze-boss,tag=maze-mob,distance=..5] resistance 1 3 true`,
      `effect give @e[tag=!maze-boss,tag=maze-mob,distance=..5] instant_damage 1 1 true`,
      `effect give @e[tag=!maze-boss,tag=maze-mob,distance=..5] wither 1 1 true`,
      `effect give @e[tag=!maze-boss,tag=maze-mob,distance=..5] jump_boost 1 128 true`,
      // `effect clear @e[tag=!maze-boss,tag=maze-mob,distance=..5] resistance`,
      // `effect clear @e[tag=!maze-boss,tag=maze-mob,distance=..5] instant_damage`
    ])

    addfunc('maze/mobs/boss/garbagecollector/deletion_mark', [
      `#> mark random areas for death`,
      `scoreboard players add @s maze-weapon-age 1`,
      [...Array(20)].map((x, i)=> {
        addfunc(`maze/mobs/boss/garbagecollector/deletion_mark/state_${i}`, [
          `particle dust 1 ${1-(i+1)/20} ${1-(i+1)/20} ${1+i/20} ~ ~ ~ ${i/40+0.05} 10 ${i/40+0.05} 0 ${200+i*10} normal`,
          `execute positioned ~-${i/40+0.05} ~-10 ~-${i/40+0.05} run tag @e[tag=maze-mob,tag=!maze-boss,dx=${i/20+0.1},dy=20,dz=${i/20+0.1}] add maze-marked-mob`,
          (i === 19) ? [
            `effect clear @e[tag=maze-marked-mob] resistance`,
            `execute at @e[tag=maze-marked-mob] run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Garbage Collector","color":"dark_green","bold":true}'}`
          ] : [
            `effect give @e[tag=maze-marked-mob] resistance 1 3 true`,
            `effect give @e[tag=maze-marked-mob] instant_damage 1 1 true`,
            `effect give @e[tag=maze-marked-mob] slowness 2 3 true`,
            `effect give @e[tag=maze-marked-mob] jump_boost 2 128 true`
          ],
          `playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 ${0.9+i/20}`,
          `tag @e remove maze-marked-mob`
        ])
        return `execute if score @s maze-weapon-age matches ${i+1} as @s at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark/state_${i}`
      }),
      `execute if score @s maze-weapon-age matches 21 run kill @s`
    ])

    addfunc('maze/mobs/boss/explorer/render_wave', [
      (() => {
        let t = [];
        for (let j = -2; j <= 2; j++) {
          for (let i = -4; i <= 4; i+=2) {
            let x = i/16;
            let y = i/8;
            let z = j/4;
            t.push([
              `particle minecraft:${i === -4 ? "snowflake" : "dolphin"} ^${z} ^${y} ^${x} 0.1 0.1 0.1 0 3`
            ])
          }
        }
        return t;
      })()
    ])

    addfunc('maze/mobs/boss/explorer/summon_wave', [
      [...Array(7)].map((a,i)=>i-3).map(x=>`execute positioned ^${x} ^ ^2 run summon marker ~ ~ ~ {Tags:["maze-explorer-wave-init","maze-explorer-wave"]}`),
      'execute rotated ~ 0 as @e[tag=maze-explorer-wave-init] positioned as @s run tp @s ~ ~ ~ ~ ~',
      `tag @e remove maze-explorer-wave-init`
    ])

    addfunc('maze/mobs/boss/explorer/start_freezefield', [
      `summon marker ~ ~ ~ {Tags:["maze-freezefield"]}`
    ])

    addfunc('maze/mobs/boss/explorer/tick_freezefield', [
      (()=>{
        let t = [];

        for (let x = 0; x < 18; x++) {
          for (let y = 0; y < 9; y++) {
            let xdeg = x*20;
            let ydeg = y*20-90;

            let xrad = xdeg*Math.PI/180;
            let yrad = ydeg*Math.PI/180;

            let s = 4;
            t.push(`particle snowflake ^${(-s*Math.cos(yrad)*Math.sin(xrad)).toFixed(4)} ^${(s*Math.sin(yrad)).toFixed(4)} ^${(s*Math.cos(yrad)*Math.cos(xrad)).toFixed(4)} 0.25 0.25 0.25 0.05 5`);
          }
        }

        schedule('execute as @e[tag=maze-freezefield] at @s run function generated:story/maze/mobs/boss/explorer/tick_freezefield', 5, functions);

        return [
          `playsound minecraft:item.elytra.flying hostile @a[distance=..5] ~ ~ ~ 0.3 2`,
          `playsound minecraft:item.elytra.flying hostile @a[distance=..5] ~ ~ ~ 0.2 1`,
          `effect give @e[tag=maze-mob,tag=!maze-boss-explorer,distance=..4] minecraft:slowness 2 9 true`,
          `effect give @e[tag=maze-mob,tag=!maze-boss-explorer,distance=..4] minecraft:jump_boost 2 128 true`,
          `effect give @e[tag=maze-mob,tag=!maze-boss-explorer,distance=..4] minecraft:blindness 2 0 true`,
          'effect give @e[tag=maze-mob,tag=!maze-boss-explorer,distance=..4] minecraft:weakness 2 128 true',
          t,
          `execute if score @s maze-weapon-age matches 40 run kill @s`,
          `scoreboard players add @s maze-weapon-age 1`
        ]
      })()
    ])

    addfunc('maze/mobs/boss/segfault/summon_firesource', [
      (()=>{
        let t = [];

        for (let x = 0; x < 9; x++) {
          for (let y = 0; y < 4; y++) {
            let xdeg = x*40;
            let ydeg = y*20+10;

            let xrad = xdeg*Math.PI/180;
            let yrad = ydeg*Math.PI/180;

            for (let s = 1; s <= 4; s++) {
              t.push(`execute if predicate hitchhike:onetwelth run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Motion:[${(-s/2*Math.cos(yrad)*Math.sin(xrad)).toFixed(4)},${(s/2*Math.sin(yrad)).toFixed(4)},${(s/2*Math.cos(yrad)*Math.cos(xrad)).toFixed(4)}],Tags:["maze-firesummon"]}`);
            }
          }
        }

        schedule(`execute as @e[tag=maze-firesummon] at @s if entity @p[distance=..16] unless block ~ ~-0.1 ~ air run function generated:story/maze/mobs/boss/segfault/firesource_tick`, 10, functions)

        return [
          `playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~`,
          t
        ]
      })()
    ])

    addfunc('maze/mobs/boss/segfault/firesource_tick', [
      `particle minecraft:flame ~ ~1 ~ 0.25 2 0.25 0 20`,
      `particle minecraft:small_flame ~ ~2 ~ 0.25 4 0.25 0 50`,
      `particle lava ~ ~ ~ 0.25 0.25 0.25 0 3`,
      `playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 0.1`,
      `summon small_fireball ~ ~3 ~ {HasVisualFire:0b,power:[0.0,-1.0,0.0],Item:{id:"minecraft:air",Count:1b}}`,
      `execute if predicate hitchhike:onetwelth run kill @s`
    ])

    addfunc('maze/mobs/boss/segfault/summon_sprayturrets', [
      [...Array(6)].map((x, i)=>i).map(x=>`summon item ~ ~ ~ {Glowing:1b,Age:5700,PickupDelay:32767,Motion:[${(-Math.sin(x*Math.PI/3)/3).toFixed(4)},0.3,${(Math.cos(x*Math.PI/3)/3).toFixed(4)}],Tags:["maze-magma-spray"],Item:{id:"minecraft:magma_block",Count:1b}}`)
    ])

    addfunc('maze/mobs/boss/segfault/sprayturret_tick', [
      (()=>{
        let t = [];

        for (let x = 0; x < 18; x++) {
          for (let y = 0; y < 4; y++) {
            let xdeg = x*20;
            let ydeg = y*20+10;

            let xrad = xdeg*Math.PI/180;
            let yrad = ydeg*Math.PI/180;

            for (let s = 1; s <= 4; s++) {
              t.push(`execute if score rng vars matches ${t.length} run summon arrow ~ ~ ~ {NoGravity:0b,Fire:1000,damage:4d,shake:0b,PierceLevel:10b,Color:16748836,Motion:[${(-s/2*Math.cos(yrad)*Math.sin(xrad)).toFixed(4)},${(s/2*Math.sin(yrad)).toFixed(4)},${(s/2*Math.cos(yrad)*Math.cos(xrad)).toFixed(4)}],Tags:["maze-arrow"],CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:100}]}`);
            }
          }
        }

        schedule(`execute as @e[tag=maze-magma-spray] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/boss/segfault/sprayturret_tick`, 2, functions)

        return [
          `particle lava ~ ~ ~ 0 0 0 0 5`,
          `playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 100 1.3`,
          `scoreboard players set _rngm vars ${t.length}`,
          `function generated:rng/rng`,
          t
        ]
      })()
    ])

    addfunc('maze/mobs/boss/segfault/summon_magma', [
      `function generated:story/maze/mobs/summon/magma`,
      `execute if predicate hitchhike:ipminionchance positioned ~ ~ ~ run function generated:story/maze/mobs/boss/segfault/summon_magma`
    ])

    addfunc('maze/mobs/boss/segfault/initiate_arrows', [
      `particle minecraft:flame ~ ~ ~ 2 2 2 0.1 100`,
      `playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 100 0.2`,
      `schedule function generated:story/maze/mobs/boss/segfault/do_summon_arrows 20t`,
      `schedule function generated:story/maze/mobs/boss/segfault/kill_arrows 30t`
    ])

    addfunc('maze/mobs/boss/segfault/do_summon_arrows', [
      'execute at @e[tag=maze-boss-segfault,limit=1] positioned ~ ~1 ~ run playsound minecraft:entity.ghast.shoot hostile @a ~ ~ ~ 100 1.4',
      `effect give @e[tag=maze-boss-segfault,limit=1] resistance 2 10 true`,
      `execute at @e[tag=maze-boss-segfault,limit=1] positioned ~ ~1 ~ run function generated:story/maze/mobs/boss/segfault/summon_arrows`
    ])

    addfunc('maze/mobs/boss/segfault/kill_arrows', [`kill @e[tag=maze-arrow]`])

    addfunc('maze/mobs/boss/segfault/summon_arrows', [
      // 'summon marker ~ ~ ~ {Tags:["maze-arrow-source","maze-mob"]}',
      [...Array(18)].map((x, i)=>i).map(x=>[...Array(9)].map((y, i)=>i).map(y=>{
        let xdeg = x*20;
        let ydeg = y*20-90;

        let xrad = xdeg*Math.PI/180;
        let yrad = ydeg*Math.PI/180;
        return [
          `execute rotated ${xdeg} ${ydeg} run summon arrow ^ ^ ^3 {NoGravity:0b,Fire:1000,damage:4d,shake:0b,PierceLevel:10b,Color:16748836,Motion:[${(-Math.cos(yrad)*Math.sin(xrad)).toFixed(4)},${(Math.sin(yrad)).toFixed(4)},${(Math.cos(yrad)*Math.cos(xrad)).toFixed(4)}],Tags:["maze-arrow"],CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:100}]}`
        ]
      }))
    ])
    // add mob attack phases
    const addmovesequence = (id: string, moves: Lines[][], stage: number = -1) => {
      if (stage === -1) {
        functions[`story/maze/mobs/move`] = [
          functions[`story/maze/mobs/move`],
          `execute as @e[tag=maze-mob,tag=maze-mob-${id}] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/move/${id}/main`
        ]
      } else {
        functions[`story/maze/mobs/move`] = [
          functions[`story/maze/mobs/move`],
          `execute as @e[tag=maze-boss,tag=maze-boss-${id},scores={boss-stage=${stage}}] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/move/boss/stage/${stage}/${id}/main`
        ]
        id = `boss/stage/${stage}/${id}`;
      }

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

    addfunc('maze/mobs/boss/getstage', [])

    Object.entries(bosses).forEach(([k, v]) => {
      addfunc(`maze/mobs/summon/boss/${k}`, [
        v.summon,
        `scoreboard players set @e[tag=maze-boss,sort=nearest,limit=1,distance=..0.1] boss-stage -1`,
        'bossbar set maze:boss players @a',
        'bossbar set maze:boss color purple',
        `bossbar set maze:boss max ${v.health*100}`,
        `bossbar set maze:boss visible true`,
        `bossbar set maze:boss style notched_6`,
        `schedule function hitchhike:story/sawyer/maze/bossbar 1t`
      ])
      addfunc(`maze/mobs/boss/init/${k}`, [])
      v.stages.forEach((stage: any, i: number)=> {
        functions[`story/maze/mobs/boss/init/${k}`] = [
          functions[`story/maze/mobs/boss/init/${k}`],
          `execute if score @s boss-stage matches ${i} as @s run function generated:story/maze/mobs/boss/init/${k}/stage-${i}`
        ]

        addfunc(`maze/mobs/boss/init/${k}/stage-${i}`, stage.init);
        addmovesequence(k, stage.moves, i);
      })

      addfunc(`maze/mobs/boss/getstage/${k}`, [
        'scoreboard players operation #tmp boss-stage = @s boss-stage',
        'scoreboard players operation @s boss-stage = bossbar maze',
        `scoreboard players operation @s boss-stage /= ${v.health} const`,
        'scoreboard players remove @s boss-stage 1',
        `scoreboard players operation @s boss-stage /= ${Math.ceil(100/v.stages.length)} const`, // now the stage is from 0 to v.stages.length-1
        'scoreboard players operation @s boss-stage *= -1 const',
        `scoreboard players add @s boss-stage ${v.stages.length-1}`,
        `execute as @s unless score @s boss-stage = #tmp boss-stage run function generated:story/maze/mobs/boss/init/${k}`
      ])

      functions[`story/maze/mobs/boss/getstage`] = [
        functions[`story/maze/mobs/boss/getstage`],
        `execute as @s[tag=maze-boss-${k}] run function generated:story/maze/mobs/boss/getstage/${k}`
      ]
    })

    //summon firework_rocket -1408 12.5 -148 {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;16777215]}]}}}}

    // main weapons
    let weapons: Record<string, any> = {
      spoon: {
        posX: -1398,
        posZ: -158,
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
          AttributeModifiers:`[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.2,Operation:1,UUID:[I;172020825,1243695863,-1688953862,1194535858],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:16,Operation:0,UUID:[I;-1466535011,1435910226,-1878562663,-1132015729],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.8,Operation:1,UUID:[I;-922863640,36653646,-1341164666,1599461106],Slot:"mainhand"}]`
        }
      },
      frenchflag: {
        posX: -1393,
        posZ: -153,
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
          AttributeModifiers:`[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1000,Operation:2,UUID:[I;1404153545,785992977,-1535149632,1770570515],Slot:"mainhand"}]`
        }
      },
      commandblock: {
        posX: -1408,
        posZ: -153,
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
      },
      firewall: {
        posX: -1403,
        posZ: -158,
        id: `'minecraft:blaze_powder'`,
        tag: {
          display:{
            Name: rawJson({
              text:"Firewall",
              color:"aqua",
              bold:true
            }),
            Lore:`[${rawJson({
                      text:"The Great...",
                      color:"#D65831"
                    })}]`
          },
          HideFlags:7,
          Enchantments:`[{id:"minecraft:fire_aspect",lvl:10s}]`,
          AttributeModifiers:`[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;243472706,-1489090135,-1530016463,-1848963892],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;245692403,1821067351,-1410396933,1710264550],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.5,Operation:1,UUID:[I;-130300453,1611024656,-1322539582,-1366430667]}]`
        }
      },
      medicine: {
        posX: -1393,
        posZ: -148,
        id: `'minecraft:dragon_breath'`,
        tag: {
          display:{
            Name: rawJson({
              text:"Mystery Medicine",
              color:"aqua",
              bold:true
            }),
            Lore:`[${rawJson({
                    text:"(Probably) not addictive.",
                    color:"blue"
                  })}]`
          },
          HideFlags:7,
          Enchantments:`[{}]`,
          AttributeModifiers:`[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1000,Operation:0,UUID:[I;-725838255,688932778,-1893475044,-1816246026]}]`
        }
      },
      pointer: {
        posX: -1408,
        posZ: -148,
        id: `'minecraft:redstone_torch'`,
        tag: {
          display:{
            Name: rawJson({
              text:"std::unique_ptr",
              color:"aqua",
              bold:true
            }),
            Lore:`[${rawJson({
                    text:"Simple and useful.",
                    color:"blue"
                  })}]`
          },
          HideFlags:7,
          Enchantments:`[{}]`,
          AttributeModifiers:`[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1000,Operation:0,UUID:[I;-1052058797,34293322,-1115478998,-133467550]}]`
        }
      },
      buildtool: {
        posX: -1427,
        posZ: -177,
        id: `'minecraft:barrier'`,
        tag: {
          display:{
            Name: rawJson({
              text:"Building Block",
              color:"light_purple",
              bold:true
            }),
            Lore:`[${rawJson({
                      text:"Infinite Possibilities",
                      color:"blue"
                    })}]`
          },
          CanPlaceOn:`["air","ice","tnt","bell","cake","clay","dirt","fern","fire","kelp","lava","loom","rail","sand","snow","tuff","anvil","chain","chest","cocoa","glass","grass","lever","light","lilac","melon","peony","poppy","stone","vine","water","allium","azalea","bamboo","barrel","basalt","beacon","bricks","cactus","candle","cobweb","gravel","hopper","ladder","piston","podzol","smoker","sponge","target","barrier","bedrock","beehive","calcite","carrots","conduit","diorite","dropper","end_rod","furnace","granite","jukebox","lantern","lectern","oak_log","pumpkin","red_bed","spawner","andesite","bee_nest","blue_bed","blue_ice","campfire","cauldron","cave_air","coal_ore","cyan_bed","farmland","gold_ore","gray_bed","hay_block","iron_ore","lily_pad","lime_bed","mycelium","oak_door","oak_sign","oak_slab","oak_wood","observer","obsidian","pink_bed","potatoes","red_sand","red_wool","seagrass","tripwire","void_air","beetroots","birch_log","black_bed","blue_wool","bookshelf","brown_bed","composter","cyan_wool","dandelion","dead_bush","deepslate","dirt_path","dispenser","end_stone","glowstone","gray_wool","green_bed","iron_bars","iron_door","lime_wool","lodestone","oak_fence","pink_wool","red_tulip","rose_bush","sandstone","soul_sand","soul_soil","sunflower","white_bed","acacia_log","birch_door","birch_sign","birch_slab","birch_wood","black_wool","blackstone","bone_block","brick_slab","brick_wall","brown_wool","cave_vines","copper_ore","cornflower","cut_copper","dragon_egg","end_portal","fire_coral","flower_pot","glass_pane","green_wool","grindstone","horn_coral","jungle_log","large_fern","melon_stem","moss_block","netherrack","note_block","oak_button","oak_leaves","oak_planks","oak_stairs","orange_bed","packed_ice","pink_tulip","prismarine","purple_bed","red_banner","red_wall_banner","red_candle","red_carpet","sea_pickle","snow_block","soul_torch","spruce_log","stone_slab","sugar_cane","tall_grass","terracotta","tube_coral","turtle_egg","wall_torch","wet_sponge","white_wool","yellow_bed","acacia_door","acacia_sign","acacia_slab","acacia_wood","azure_bluet","birch_fence","blue_banner","blue_wall_banner","blue_candle","blue_carpet","blue_orchid","brain_coral","coarse_dirt","cobblestone","cyan_banner","cyan_wall_banner","cyan_candle","cyan_carpet","diamond_ore","dragon_head","emerald_ore","end_gateway","ender_chest","frosted_ice","glow_lichen","grass_block","gray_banner","gray_wall_banner","gray_candle","gray_carpet","honey_block","jungle_door","jungle_sign","jungle_slab","jungle_wood","lime_banner","lime_wall_banner","lime_candle","lime_carpet","magenta_bed","magma_block","moss_carpet","nether_wart","oak_sapling","orange_wool","oxeye_daisy","pink_banner","pink_wall_banner","pink_candle","pink_carpet","piston_head","player_head","potted_fern","powder_snow","purple_wool","purpur_slab","quartz_slab","rooted_dirt","scaffolding","sea_lantern","shroomlight","shulker_box","slime_block","spruce_door","spruce_sign","spruce_slab","spruce_wood","stonecutter","warped_door","warped_sign","warped_slab","warped_stem","wheat","white_tulip","wither_rose","yellow_wool","zombie_head","acacia_fence","bamboo_sapling","big_dripleaf","birch_button","birch_leaves","birch_planks","birch_stairs","black_banner","black_wall_banner","black_candle","black_carpet","brick_stairs","brown_banner","brown_wall_banner","brown_candle","brown_carpet","bubble_coral","chorus_plant","creeper_head","crimson_door","crimson_sign","crimson_slab","crimson_stem","dark_oak_log","diorite_slab","diorite_wall","granite_slab","granite_wall","green_banner","green_wall_banner","green_candle","green_carpet","jigsaw","jungle_fence","magenta_wool","oak_trapdoor","orange_tulip","potted_poppy","powered_rail","pumpkin_stem","purpur_block","red_concrete","red_mushroom","redstone_ore","sculk_sensor","smooth_stone","soul_lantern","spruce_fence","stone_bricks","stone_button","stone_stairs","tinted_glass","warped_fence","warped_roots","white_banner","white_wall_banner","white_candle","white_carpet","acacia_button","acacia_leaves","acacia_planks","acacia_stairs","andesite_slab","andesite_wall","azalea_leaves","birch_sapling","blast_furnace","coal_block","gold_block","iron_block","blue_concrete","brewing_stand","chipped_anvil","chorus_flower","command_block","crimson_fence","crimson_roots","cut_sandstone","cyan_concrete","damaged_anvil","dark_oak_door","dark_oak_sign","dark_oak_slab","dark_oak_wood","detector_rail","gray_concrete","hanging_roots","iron_trapdoor","jungle_button","jungle_leaves","jungle_planks","jungle_stairs","lava_cauldron","lightning_rod","lime_concrete","moving_piston","mushroom_stem","nether_bricks","nether_portal","oak_wall_sign","orange_banner","orange_wall_banner","orange_candle","orange_carpet","pink_concrete","potted_allium","potted_azalea_bush","potted_bamboo","potted_cactus","purple_banner","purple_wall_banner","purple_candle","purple_carpet","purpur_pillar","purpur_stairs","quartz_bricks","quartz_pillar","quartz_stairs","red_sandstone","redstone_lamp","redstone_wire","smooth_basalt","soul_campfire","spore_blossom","spruce_button","spruce_leaves","spruce_planks","spruce_stairs","sticky_piston","trapped_chest","tripwire_hook","warped_button","warped_fungus","warped_hyphae","warped_nylium","warped_planks","warped_stairs","weeping_vines","yellow_banner","yellow_wall_banner","yellow_candle","yellow_carpet","acacia_sapling","activator_rail","ancient_debris","birch_trapdoor","black_concrete","brown_concrete","brown_mushroom","carved_pumpkin","crafting_table","crimson_button","crimson_fungus","crimson_hyphae","crimson_nylium","crimson_planks","crimson_stairs","dark_oak_fence","diorite_stairs","exposed_copper","fire_coral_fan","granite_stairs","green_concrete","horn_coral_fan","infested_stone","jack_o_lantern","jungle_sapling","light_blue_bed","light_gray_bed","magenta_banner","magenta_wall_banner","magenta_candle","magenta_carpet","nether_sprouts","oak_fence_gate","red_terracotta","respawn_anchor","sandstone_slab","sandstone_wall","skeleton_skull","small_dripleaf","smithing_table","spruce_sapling","structure_void","tube_coral_fan","twisting_vines","water_cauldron","white_concrete","acacia_trapdoor","andesite_stairs","birch_wall_sign","blackstone_slab","blackstone_wall","copper_block","quartz_block","blue_terracotta","brain_coral_fan","crying_obsidian","cut_copper_slab","cyan_terracotta","dark_oak_button","dark_oak_leaves","dark_oak_planks","dark_oak_stairs","dark_prismarine","dead_fire_coral","dead_horn_coral","dead_tube_coral","deepslate_tiles","dripstone_block","fletching_table","gray_terracotta","honeycomb_block","jungle_trapdoor","light_blue_wool","light_gray_wool","lime_terracotta","nether_gold_ore","orange_concrete","oxidized_copper","pink_terracotta","polished_basalt","prismarine_slab","prismarine_wall","purple_concrete","red_shulker_box","spruce_trapdoor","structure_block","warped_trapdoor","yellow_concrete","acacia_wall_sign","amethyst_cluster","birch_fence_gate","black_terracotta","diamond_block","emerald_block","blue_shulker_box","brown_terracotta","bubble_coral_fan","budding_amethyst","candle_cake","cave_vines_plant","cobblestone_slab","cobblestone_wall","crimson_trapdoor","cyan_shulker_box","dark_oak_sapling","dead_brain_coral","deepslate_bricks","dragon_wall_head","dried_kelp_block","enchanting_table","end_portal_frame","end_stone_bricks","fire_coral_block","flowering_azalea","gray_shulker_box","green_terracotta","horn_coral_block","jungle_wall_sign","lapis_ore","lime_shulker_box","magenta_concrete","pink_shulker_box","player_wall_head","polished_diorite","polished_granite","potted_dandelion","potted_dead_bush","potted_red_tulip","sandstone_stairs","smooth_sandstone","spruce_wall_sign","stone_brick_slab","stone_brick_wall","stripped_oak_log","sweet_berry_bush","tube_coral_block","warped_wall_sign","waxed_cut_copper","weathered_copper","white_terracotta","zombie_wall_head","acacia_fence_gate","big_dripleaf_stem","black_shulker_box","blackstone_stairs","amethyst_block","raw_gold_block","raw_iron_block","redstone_block","brain_coral_block","brown_shulker_box","cartography_table","cobbled_deepslate","creeper_wall_head","crimson_wall_sign","cut_copper_stairs","cut_red_sandstone","dark_oak_trapdoor","daylight_detector","dead_bubble_coral","gilded_blackstone","green_shulker_box","jungle_fence_gate","light_blue_banner","light_blue_wall_banner","light_blue_candle","light_blue_carpet","light_gray_banner","light_gray_wall_banner","light_gray_candle","light_gray_carpet","mossy_cobblestone","nether_brick_slab","nether_brick_wall","nether_quartz_ore","nether_wart_block","orange_terracotta","pointed_dripstone","polished_andesite","potted_pink_tulip","prismarine_bricks","prismarine_stairs","purple_terracotta","red_nether_bricks","red_stained_glass","repeater","smooth_stone_slab","spruce_fence_gate","stripped_oak_wood","warped_fence_gate","warped_wart_block","white_shulker_box","yellow_terracotta","netherite_block","blue_stained_glass","bubble_coral_block","chiseled_deepslate","chiseled_sandstone","cobblestone_stairs","crimson_fence_gate","cut_sandstone_slab","cyan_stained_glass","dark_oak_wall_sign","deepslate_coal_ore","deepslate_gold_ore","deepslate_iron_ore","exposed_cut_copper","gray_stained_glass","infested_deepslate","large_amethyst_bud","lily_of_the_valley","lime_stained_glass","magenta_terracotta","mossy_stone_bricks","nether_brick_fence","oak_pressure_plate","orange_shulker_box","petrified_oak_slab","pink_stained_glass","polished_deepslate","potted_azure_bluet","potted_blue_orchid","potted_oak_sapling","potted_oxeye_daisy","potted_white_tulip","purple_shulker_box","red_mushroom_block","red_sandstone_slab","red_sandstone_wall","small_amethyst_bud","smooth_quartz_slab","stone_brick_stairs","stripped_birch_log","yellow_shulker_box","attached_melon_stem","black_stained_glass","raw_copper_block","brown_stained_glass","chain_command_block","dark_oak_fence_gate","dead_fire_coral_fan","dead_horn_coral_fan","dead_tube_coral_fan","deepslate_tile_slab","deepslate_tile_wall","fire_coral_wall_fan","green_stained_glass","horn_coral_wall_fan","light_blue_concrete","light_gray_concrete","magenta_shulker_box","medium_amethyst_bud","nether_brick_stairs","oxidized_cut_copper","polished_blackstone","potted_orange_tulip","potted_red_mushroom","potted_warped_roots","red_concrete_powder","comparator","redstone_wall_torch","skeleton_wall_skull","smooth_quartz","stripped_acacia_log","stripped_birch_wood","stripped_jungle_log","stripped_spruce_log","tube_coral_wall_fan","weeping_vines_plant","white_stained_glass","birch_pressure_plate","blue_concrete_powder","brain_coral_wall_fan","brown_mushroom_block","red_candle_cake","cracked_stone_bricks","cyan_concrete_powder","dark_prismarine_slab","dead_brain_coral_fan","deepslate_brick_slab","deepslate_brick_wall","deepslate_copper_ore","end_stone_brick_slab","end_stone_brick_wall","gray_concrete_powder","infested_cobblestone","lime_concrete_powder","orange_stained_glass","pink_concrete_powder","potted_birch_sapling","potted_crimson_roots","potted_warped_fungus","powder_snow_cauldron","purple_stained_glass","red_sandstone_stairs","smooth_quartz_stairs","smooth_red_sandstone","stone_pressure_plate","stripped_acacia_wood","stripped_jungle_wood","stripped_spruce_wood","stripped_warped_stem","twisting_vines_plant","waxed_exposed_copper","weathered_cut_copper","yellow_stained_glass","acacia_pressure_plate","attached_pumpkin_stem","black_concrete_powder","lapis_block","brown_concrete_powder","bubble_coral_wall_fan","blue_candle_cake","cyan_candle_cake","gray_candle_cake","lime_candle_cake","pink_candle_cake","chiseled_quartz_block","chiseled_stone_bricks","cracked_nether_bricks","dead_bubble_coral_fan","dead_fire_coral_block","dead_horn_coral_block","dead_tube_coral_block","deepslate_diamond_ore","deepslate_emerald_ore","deepslate_tile_stairs","green_concrete_powder","infested_stone_bricks","jungle_pressure_plate","light_blue_terracotta","light_gray_terracotta","magenta_stained_glass","polished_diorite_slab","polished_granite_slab","potted_acacia_sapling","potted_brown_mushroom","potted_crimson_fungus","potted_jungle_sapling","potted_spruce_sapling","prismarine_brick_slab","red_glazed_terracotta","red_nether_brick_slab","red_nether_brick_wall","smooth_sandstone_slab","spruce_pressure_plate","stripped_crimson_stem","stripped_dark_oak_log","warped_pressure_plate","waxed_copper_block","waxed_cut_copper_slab","waxed_oxidized_copper","white_concrete_powder","wither_skeleton_skull","blue_glazed_terracotta","black_candle_cake","brown_candle_cake","green_candle_cake","white_candle_cake","chiseled_nether_bricks","chiseled_red_sandstone","cobbled_deepslate_slab","cobbled_deepslate_wall","crimson_pressure_plate","cut_red_sandstone_slab","cyan_glazed_terracotta","dark_prismarine_stairs","dead_brain_coral_block","deepslate_brick_stairs","deepslate_redstone_ore","end_stone_brick_stairs","gray_glazed_terracotta","light_blue_shulker_box","light_gray_shulker_box","lime_glazed_terracotta","mossy_cobblestone_slab","mossy_cobblestone_wall","mossy_stone_brick_slab","mossy_stone_brick_wall","orange_concrete_powder","pink_glazed_terracotta","polished_andesite_slab","purple_concrete_powder","red_stained_glass_pane","stripped_dark_oak_wood","stripped_warped_hyphae","waxed_weathered_copper","yellow_concrete_powder","black_glazed_terracotta","blue_stained_glass_pane","brown_glazed_terracotta","orange_candle_cake","purple_candle_cake","yellow_candle_cake","cracked_deepslate_tiles","cyan_stained_glass_pane","dark_oak_pressure_plate","dead_bubble_coral_block","exposed_cut_copper_slab","flowering_azalea_leaves","gray_stained_glass_pane","green_glazed_terracotta","lime_stained_glass_pane","magenta_concrete_powder","pink_stained_glass_pane","polished_deepslate_slab","polished_deepslate_wall","polished_diorite_stairs","polished_granite_stairs","potted_dark_oak_sapling","potted_flowering_azalea_bush","prismarine_brick_stairs","red_nether_brick_stairs","repeating_command_block","smooth_sandstone_stairs","stripped_crimson_hyphae","waxed_cut_copper_stairs","white_glazed_terracotta","black_stained_glass_pane","brown_stained_glass_pane","magenta_candle_cake","cobbled_deepslate_stairs","cracked_deepslate_bricks","dead_fire_coral_wall_fan","dead_horn_coral_wall_fan","dead_tube_coral_wall_fan","green_stained_glass_pane","light_blue_stained_glass","light_gray_stained_glass","mossy_cobblestone_stairs","mossy_stone_brick_stairs","orange_glazed_terracotta","oxidized_cut_copper_slab","polished_andesite_stairs","polished_blackstone_slab","polished_blackstone_wall","waxed_exposed_cut_copper","white_stained_glass_pane","yellow_glazed_terracotta","dead_brain_coral_wall_fan","exposed_cut_copper_stairs","magenta_glazed_terracotta","orange_stained_glass_pane","polished_deepslate_stairs","purple_stained_glass_pane","smooth_red_sandstone_slab","waxed_oxidized_cut_copper","weathered_cut_copper_slab","yellow_stained_glass_pane","dead_bubble_coral_wall_fan","deepslate_lapis_ore","light_blue_concrete_powder","light_gray_concrete_powder","magenta_stained_glass_pane","oxidized_cut_copper_stairs","polished_blackstone_bricks","polished_blackstone_button","polished_blackstone_stairs","waxed_weathered_cut_copper","wither_skeleton_wall_skull","light_blue_candle_cake","light_gray_candle_cake","infested_mossy_stone_bricks","smooth_red_sandstone_stairs","weathered_cut_copper_stairs","chiseled_polished_blackstone","light_blue_glazed_terracotta","light_gray_glazed_terracotta","heavy_weighted_pressure_plate","infested_cracked_stone_bricks","light_blue_stained_glass_pane","light_gray_stained_glass_pane","light_weighted_pressure_plate","waxed_exposed_cut_copper_slab","infested_chiseled_stone_bricks","polished_blackstone_brick_slab","polished_blackstone_brick_wall","waxed_oxidized_cut_copper_slab","waxed_exposed_cut_copper_stairs","waxed_weathered_cut_copper_slab","polished_blackstone_brick_stairs","waxed_oxidized_cut_copper_stairs","waxed_weathered_cut_copper_stairs","cracked_polished_blackstone_bricks","polished_blackstone_pressure_plate"]`,
          HideFlags:127,
          Enchantments:`[{}]`,
          AttributeModifiers:`[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-1,Operation:1,UUID:[I;-339360344,2031963198,-1834550935,770994111],Slot:"mainhand"}]`
        }
      }
    }

    Object.entries(weapons).forEach(([k, v]) => {
      weapons[k].tag = Object.assign({weapon:`'${k}'`, isweapon: true}, v.tag);
    })

    schedule('execute if score enabled maze matches 1 run function generated:story/maze/mobs/move', 10, functions);
    schedule([
      `scoreboard players set mobcount maze 0`,
      `execute as @e[tag=maze-mob,type=!arrow,type=!player,tag=!maze-mob-spawn-attempt] run scoreboard players add mobcount maze 1`,
      'execute if score enabled maze matches 1 if score mobcount maze matches ..40 run function hitchhike:story/maze/mobs/attemptsummon'
    ], 20, functions)

    schedule([
      `execute at @a run tag @e[tag=maze-mob,type=!arrow,tag=!maze-host,type=!player,distance=..24,sort=nearest,limit=40] add maze-mob-safe`,
      `tp @e[tag=maze-mob,tag=!maze-mob-safe,type=!arrow,type=!player,tag=!maze-host,tag=!maze-boss] 0 -1000 0`,
      `tag @e remove maze-mob-safe`,
      `execute if score enabled maze matches 1 run scoreboard players set @a foodGoal 41`
    ], 100, functions)

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
      `execute as @e[tag=maze-mob,type=bee] run data modify entity @s HasStung set value 0`,
      `execute as @e[tag=maze-mob,type=iron_golem] at @s run data modify entity @s AngryAt set from entity @p UUID`,
      `execute as @e[tag=maze-mob,type=iron_golem] run data modify entity @s AngerTime set value 2147483647`,
    ], 20, functions);

    schedule(`execute at @e[tag=maze-pearl] run particle minecraft:firework ~ ~ ~ 0 0 0 1 0`, 5, functions);

    schedule(`execute as @e[tag=maze-path-display,type=marker] at @s run function hitchhike:story/maze/pathfind/displaytick`, 10, functions)

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

    const weaponSpawnList = ["pointer", "commandblock", "firewall", "spoon", "frenchflag", "medicine"];
    weaponSpawnList.forEach((k, i) => {
      addfunc(`maze/weapons/spawnseq/${i}`, [
        `summon firework_rocket ${weapons[k].posX} 12.5 ${weapons[k].posZ} {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;16777215]}]}}}}`,
        `summon item ${weapons[k].posX} 12.5 ${weapons[k].posZ} {PickupDelay:32767,Age:-32768,Tags:["maze-weapon-displaystand"],Item:${toSnbt(Object.assign({Count:'1b'}, weapons[k]))}}`,
        `playsound minecraft:entity.experience_orb.pickup neutral @a ${weapons[k].posX} 12.5 ${weapons[k].posZ} 1 0.6`,
        `schedule function generated:story/maze/weapons/spawnseq/${i+1} 40t`
      ])
    })

    addfunc(`maze/weapons/spawnseq/${weaponSpawnList.length}`, [
      'schedule function generated:story/maze/weapons/weapon_pickup_handle 5t'
    ])
    addfunc(`maze/weapons/weapon_pickup_handle`, [
      `scoreboard players set @a maze-weapon-seld -1`,
      weaponSpawnList.map((k, i) => `execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"${k}"}}}] at @s positioned ~-0.6 ~-1 ~-0.6 run scoreboard players set @a[dx=1.2,dy=2,dz=1.2] maze-weapon-seld ${i}`),
      weaponSpawnList.map((k, i) => `execute as @a[scores={maze-weapon-seld=0..}] unless entity @s[scores={maze-weapon-seld=${i}}] run clear @s ${weapons[k].id.slice(1, weapons[k].id.length-1)}{weapon:"${k}",isweapon:1b}`),
      weaponSpawnList.map((k, i) => `execute as @a[scores={maze-weapon-seld=0..}] if entity @s[scores={maze-weapon-seld=${i}}] unless entity @s[nbt={Inventory:[{tag:{weapon:"${k}"}}]}] run function generated:story/maze/weapons/${k}/give`),
      'execute if score enabled maze matches 1 run schedule function generated:story/maze/weapons/weapon_pickup_handle 5t'
    ])

    addfunc('maze/weapons/start', [
      'execute store result score #CMP UUID0 run data get entity @s Thrower[0]',
      'execute store result score #CMP UUID1 run data get entity @s Thrower[1]',
      'execute store result score #CMP UUID2 run data get entity @s Thrower[2]',
      'execute store result score #CMP UUID3 run data get entity @s Thrower[3]',
      'tag @a add match-selectable',
      'function hitchhike:uuid/match',
      'tag @s add selected-weapon-item',
      Object.entries(weapons).map(([k, v])=>{
        addfunc(`maze/weapons/${k}/start`, [
          `execute if entity @s[x=${-1500-Math.floor(cellsize/2)},y=${cellsize},z=${-Math.floor(cellsize/2)},dx=${cellsize*15-Math.floor(cellsize/2)},dy=${cellsize*15},dz=${cellsize*15-Math.floor(cellsize/2)},tag=maze-mob] as @s at @s run function generated:story/maze/weapons/${k}/_start`,
          `execute unless entity @s[x=${-1500-Math.floor(cellsize/2)},y=${cellsize},z=${-Math.floor(cellsize/2)},dx=${cellsize*15-Math.floor(cellsize/2)},dy=${cellsize*15},dz=${cellsize*15-Math.floor(cellsize/2)},tag=maze-mob] as @s run function generated:story/maze/weapons/${k}/give`
        ])
        addfunc(`maze/weapons/${k}/_start`, [
          `summon minecraft:marker ~ ~ ~ {Tags:["maze-weapon-init","maze-weapon","maze-weapon-${k}"]}`,
          `data modify entity @e[tag=maze-weapon-init,limit=1] data.PlayerUUID set from entity @s UUID`,
          `execute as @s at @s run function hitchhike:story/maze/weapons/${k}/start`,
          `tag @e remove maze-weapon-init`
        ])
        return `execute if entity @s[type=item,nbt={Item:{tag:{weapon:"${k}"}}}] as @a[tag=match-uuid-select] at @s run function generated:story/maze/weapons/${k}/start`
      }),
      'kill @s'
    ])

    addfunc('maze/weapons/tick', [
      'execute as @e[type=item,nbt={Item:{tag:{isweapon:1b}}},tag=!maze-weapon-displaystand] run function generated:story/maze/weapons/start',
      Object.keys(weapons).map(x=>`execute as @e[tag=maze-weapon-${x}] at @s run function hitchhike:story/maze/weapons/${x}/tick`)
    ])

    addfunc('maze/weapons/detecthit', [
      'execute as @s at @s run function hitchhike:hitdetect/detect',
      Object.keys(weapons).map((k)=>`execute if entity @s[nbt={SelectedItem:{tag:{weapon:"${k}"}}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/${k}/onhit`)
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

    schedule('execute if score enabled maze matches 1 as @e[tag=maze-mob,tag=maze-pointer-marked] run function hitchhike:story/maze/weapons/pointer/handlemarked', 5, functions);

    schedule(`execute if score enabled maze matches 1 run effect give @a[tag=maze-mob,nbt={SelectedItem:{tag:{weapon:"firewall"}}}] fire_resistance 10 0 true`, 100, functions);

    addfunc('maze/weapons/firewall/summonwall', [
      [...Array(7)].map((x, i) => i-4).map(i=>`summon marker ^${i} ^ ^ {Tags:["maze-firewall-marker","maze-firewall-marker-init"]}`),
      'scoreboard players operation @e[tag=maze-firewall-marker-init] maze-weapon-age = @s maze-weapon-age',
      'tag @e remove maze-firewall-marker-init',
      `tp @s ~ ~0.5 ~`
    ])

    addfunc('maze/weapons/frenchflag/inittickers', [
      [...new Array(dims[0]*2+1)].map((x, i) => i-dims[0]-1).map(i=>([...new Array(dims[1]*2+1)].map((x, j)=> j-dims[1]-1).map(j=>[
        `summon marker ~ ~ ~ {Tags:["maze-weapon", "maze-weapon-frenchflag-ticker","maze-weapon-frenchflag-ticker-init","maze-weapon-frenchflag-ticker-init-init"]}`,
        `execute as @e[tag=maze-weapon-frenchflag-ticker-init-init] rotated ~${i*6} ~${j*6} run function hitchhike:story/maze/weapons/frenchflag/initticker`
      ]))),
      `execute as @e[tag=maze-weapon-frenchflag-ticker-init] run data modify entity @s MarkerUUID set from entity @e[tag=maze-weapon-init,limit=1] UUID`,
      `tag @e remove maze-weapon-frenchflag-ticker-init`
    ])

    addfunc('maze/weapons/buildtool/tick', [
      `execute if score enabled maze matches 1 run item modify entity @a[tag=maze-mob,nbt={SelectedItem:{id:"minecraft:barrier",tag:{weapon:"buildtool",isweapon:1b}}}] weapon.mainhand generated:allow_buildtool`,
      `execute if score enabled maze matches 1 run item modify entity @a[tag=maze-mob,nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier",tag:{weapon:"buildtool",isweapon:1b}}]}] weapon.offhand generated:allow_buildtool`,
      `item modify entity @a[tag=!maze-mob,nbt={SelectedItem:{id:"minecraft:barrier",tag:{weapon:"buildtool",isweapon:1b}}}] weapon.mainhand generated:disallow_build`,
      `item modify entity @a[tag=!maze-mob,nbt={Inventory:[{Slot:-106b,id:"minecraft:barrier",tag:{weapon:"buildtool",isweapon:1b}}]}] weapon.offhand generated:disallow_build`
    ])

    addfunc('maze/weapons/buildtool/detect', [
      `execute as @s positioned ~ ~ ~ run function generated:story/maze/weapons/buildtool/summontimer`
    ])

    addfunc('maze/weapons/buildtool/summontimer', [
      (() => {
        let t: [number, number, number, number][] = [];

        for (let x = -5; x <= 5; x++) {
          for (let y = -5; y <= 5; y++) {
            for (let z = -5; z <= 5; z++) {
              t.push([x, y, z, x*x+y*y+z*z])
            }
          }
        }

        t.sort((a, b) => a[3]-b[3]);

        // console.log(t);

        t.forEach((x, i)=>{
          addfunc(`maze/weapons/buildtool/detector/increment-${i}`, [
            `execute as @s positioned ~${x[0]} ~${x[1]} ~${x[2]} if block ~ ~ ~ barrier run function generated:story/maze/weapons/buildtool/summontimer_`,
            `execute as @s unless score @s maze-placed matches ..0 positioned ~ ~ ~ run function generated:story/maze/weapons/buildtool/detector/increment-${i+1}`
          ])
        })

        addfunc(`maze/weapons/buildtool/detector/increment-${t.length}`, [])

        return `execute positioned ~ ~ ~ run function generated:story/maze/weapons/buildtool/detector/increment-0`;
      })(),
      `tag @a remove match-uuid-select`,
      `tag @s add match-uuid-select`,
      `execute as @e[tag=maze-buildtool-timer-init] run data modify entity @s data.PlayerUUID set from entity @a[tag=match-uuid-select,limit=1] UUID`,
      `execute at @e[tag=maze-buildtool-timer-init] if block ~ ~ ~ barrier run setblock ~ ~ ~ light_gray_wool`,
      `tag @e remove maze-buildtool-timer-init`
    ])

    addfunc('maze/weapons/buildtool/summontimer_', [
      `summon marker ~ ~ ~ {Tags:["maze-buildtool-timer","maze-buildtool-timer-init"]}`,
      `scoreboard players remove @s maze-placed 1`
    ])

    addfunc('maze/create', [
      `forceload add -1504 -2 -1371 129`,
      `function generated:story/maze/loadchunks`,
      '',
      'schedule function generated:story/maze/_create 20t'
    ]);

    addfunc('maze/_create', [
      '# Reset maze',
      'kill @e[tag=maze-marker]',
      `function hitchhike:story/maze/reset`,
      '# Set Size of maze',
      `scoreboard players set cellsize maze ${cellsize}`,
      'scoreboard players set size maze 15',
      '# Set up bossbar',
      'bossbar set minecraft:maze name [{"text":"Clearing Memory"}]',
      'bossbar set minecraft:maze color red',
      'execute store result bossbar minecraft:maze max run scoreboard players get size maze',
      'bossbar set minecraft:maze players @a',
      'bossbar set minecraft:maze visible true',
      'bossbar set minecraft:maze style progress',
      'bossbar set minecraft:maze value 0',
      'scoreboard players set bossbar maze 0',
      `summon marker -1500 ${cellsize+(cellsize-1)/2} 0 {Tags:["maze-marker","maze-create-root"]}`,
      `forceload add -1504 -2 -1371 129`,
      `function generated:story/maze/loadchunks`,
      '',
      'scoreboard players operation _x maze = size maze',
      'schedule function generated:story/maze/create/_x 20t'
    ]);

    addfunc('maze/create/_x', [
      'scoreboard players operation _y maze = size maze',
      'scoreboard players add bossbar maze 1',
      'execute store result bossbar minecraft:maze value run scoreboard players get bossbar maze',
      '',
      'execute as @e[type=marker,tag=maze-marker,tag=maze-create-root] at @s run function generated:story/maze/create/_y',
      'scoreboard players remove _x maze 1',
      `execute as @e[type=marker,tag=maze-marker,tag=maze-create-root] at @s run tp ~${cellsize} ${cellsize+(cellsize-1)/2} 0`,
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
      `fill ~-${(cellsize-1)/2} ~-${(cellsize-1)/2} ~-${(cellsize-1)/2} ~${(cellsize+1)/2} ~${(cellsize+1)/2} ~${(cellsize+1)/2} air`,
      // `clone ${-1000-(cellsize-1)/2} ${200-(cellsize-1)/2} ${-(cellsize-1)/2} ${-1000+(cellsize-1)/2} ${200+(cellsize-1)/2} ${(cellsize-1)/2} ~${-(cellsize-1)/2} ~${-(cellsize-1)/2} ~${-(cellsize-1)/2}`,
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
      'bossbar set minecraft:maze name [{"text":"Preparing New Memory"}]',
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

    addfunc('maze/create/loadcells', [
      `execute as @e[tag=maze-node] at @s run function generated:story/maze/create/_updateconnections`,
      '# Set up bossbar',
      'bossbar set minecraft:maze name [{"text":"Loading SD Card"}]',
      'bossbar set minecraft:maze color blue',
      'scoreboard players operation bossbar maze = size maze',
      'scoreboard players operation bossbar maze *= size maze',
      'execute store result bossbar minecraft:maze max run scoreboard players get bossbar maze',
      'bossbar set minecraft:maze players @a',
      'bossbar set minecraft:maze visible true',
      'bossbar set minecraft:maze style progress',
      'bossbar set minecraft:maze value 0',
      'scoreboard players set bossbar maze 0',
      'scoreboard players operation batchsize maze = size maze',
      '',
      'function generated:story/maze/create/_loadcellbatch'
    ])

    addfunc('maze/create/_loadcellbatch', [
      'scoreboard players operation _batchleft maze = batchsize maze',
      'scoreboard players add bossbar maze 1',
      'execute store result bossbar minecraft:maze value run scoreboard players get bossbar maze',
      'function generated:story/maze/create/_loadcells',
      'execute unless score _batchleft maze matches ..-1 run schedule function generated:story/maze/create/_loadcellbatch 1t',
      'execute unless score enabled maze matches 1 if score _batchleft maze matches ..-1 run function generated:story/maze/create/_cleanupall'
    ])

    addfunc('maze/create/_loadcells', [
      '# Clone in random cells',
      'execute unless entity @e[type=marker,tag=maze-node,tag=maze-visited] run scoreboard players set _batchleft maze 0',
      'execute as @e[type=marker,tag=maze-node,tag=maze-visited,sort=random,limit=1] at @s run function generated:story/maze/create/_loadcell',
      'scoreboard players remove _batchleft maze 1',
      'execute unless score _batchleft maze matches ..0 run function generated:story/maze/create/_loadcells'
    ])

    const corners = [
      [-1, -1, -1],
      [-1, -1, 1],
      // [-1, 1, -1],
      // [-1, 1, 1],
      [1, -1, -1],
      [1, -1, 1],
      // [1, 1, -1],
      // [1, 1, 1]
    ]

    addfunc('maze/create/_loadcell', [
      'scoreboard players operation #tmp maze-connections = @s maze-connections',
      'scoreboard players operation #tmp maze-tile-type = @s maze-tile-type',
      'execute as @e[tag=maze-tile] if score @s maze-connections = #tmp maze-connections if score @s maze-tile-type = #tmp maze-tile-type run tag @s add maze-tile-selectable',
      `execute at @e[tag=maze-tile-selectable,sort=random,limit=1] run clone ~${-(cellsize-1)/2} ~${-(cellsize-1)/2} ~${-(cellsize-1)/2} ~${(cellsize-1)/2} ~${(cellsize-1)/2} ~${(cellsize-1)/2} ${-1000-(cellsize-1)/2} ${200-(cellsize-1)/2} ${-(cellsize-1)/2}`,
      `clone ${-1000-(cellsize-1)/2} ${200-(cellsize-1)/2} ${-(cellsize-1)/2} ${-1000+(cellsize-1)/2} ${200+(cellsize-1)/2} ${+(cellsize-1)/2} ~${-(cellsize-1)/2} ~${-(cellsize-1)/2} ~${-(cellsize-1)/2} `,
      corners.map(x=>`execute if score @s maze-tile-type matches 1.. align xyz positioned ~1 ~1 ~1 run setblock ~${x[0]*cellsize/2} ~${x[1]*cellsize/2} ~${x[2]*cellsize/2} spawner{SpawnCount:5,SpawnRange:${(cellsize+1)/2},Delay:20,MinSpawnDelay:20,MaxSpawnDelay:100,MaxNearbyEntities:15,RequiredPlayerRange:15,SpawnData:{id:"minecraft:marker",Tags:["maze-mob","maze-mob-spawn-attempt"]}}`),
      'tag @e[tag=maze-tile] remove maze-tile-selectable',
      'tag @s remove maze-visited'
    ])

    addfunc('maze/create/_updateconnections', [
      `scoreboard players set @s maze-connections 0`,
      neighbors.map((x, i) => `execute if entity @s[tag=maze-connect-${i}] run scoreboard players add @s maze-connections ${1 << i}`)
    ])

    addfunc('maze/create/_generatecleanup', [
      'bossbar set minecraft:maze name [{"text":"Finalizing Allocation"}]',
      'bossbar set minecraft:maze color green',
      'scoreboard players operation _removeleft maze = size maze',
      'scoreboard players operation _removeleft maze *= 4 const',
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
      // 'execute as @e[tag=maze-node] if score @s maze-tile-type matches 2 run tag @s add maze-tile-corrupted', //tag all maze corrupted nodes for later selection
      'execute as @e[type=marker,tag=maze-node] run function generated:story/maze/create/getpos',
      // 'tag @e[type=marker,tag=maze-node] remove maze-visited',
      'bossbar set minecraft:maze visible false',
      `function generated:story/maze/unloadchunks`,
      'function hitchhike:story/sawyer/maze/ready'
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

    const propogate_thresholds = [50, 70]

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
      'execute store result score #tmp maze run bossbar get minecraft:maze value',
      'execute store result score #tmpmax maze run bossbar get minecraft:maze max',
      'scoreboard players operation #tmp maze *= 100 const',
      'scoreboard players operation #tmp maze /= #tmpmax maze',
      `execute if score #tmp maze matches ..${propogate_thresholds[0]-1} run scoreboard players set @s maze-tile-type 0`,
      `execute if score #tmp maze matches ${propogate_thresholds[0]}..${propogate_thresholds[1]-1} run scoreboard players set @s maze-tile-type 1`,
      `execute if score #tmp maze matches ${propogate_thresholds[1]}.. run scoreboard players set @s maze-tile-type 2`,
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
      `execute if score _removeleft maze matches 0 run function generated:story/maze/create/loadcells`
    ])

    addfunc('maze/create/_removerandomwalls', [
      '#> Remove n random walls from the maze',
      'execute as @e[type=marker,tag=maze-node,sort=random,limit=1] at @s run function generated:story/maze/create/_removerandomwall',
      'scoreboard players remove _batchleft maze 1',
      'execute unless score _batchleft maze matches 0 run function generated:story/maze/create/_removerandomwalls'
    ])

    addfunc('maze/create/_deletewall', [
      // '# Delete wall between self and node marked maze-connect',
      // `execute at @s facing entity @e[type=marker,tag=maze-node,tag=maze-connect] feet run fill ^${-((cellsize-1)/2-1)} ^${-((cellsize-1)/2-1)} ^${(cellsize-1)/2} ^${((cellsize-1)/2-1)} ^${((cellsize-1)/2-1)} ^${(cellsize-1)/2+1} air`,
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
      'execute as @e[type=marker,tag=maze-node,tag=path-goal] run function generated:story/maze/pathfind/_pathgetnext',
      'function hitchhike:story/maze/pathfind/startdisplay'
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

    const mazerows = [0, 0, 0, 0, 0, 0, 1, 2, 2, 1, 1, 0];
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

    addfunc('maze/unloadchunks', [
      [...Array(mazerows.length)].map((x, i)=>`forceload remove ${mazeorigin[0]-(cellsize+1)/2} ${mazeorigin[2]+15*(i-1)-(cellsize+1)/2} ${mazeorigin[0]+15*(mazecols-1)+(cellsize+1)/2} ${mazeorigin[2]+15*(i-1)+(cellsize+1)/2}`)
    ])

    addfunc('maze/loadchunks', [
      [...Array(mazerows.length)].map((x, i)=>`forceload add ${mazeorigin[0]-(cellsize+1)/2} ${mazeorigin[2]+15*(i-1)-(cellsize+1)/2} ${mazeorigin[0]+15*(mazecols-1)+(cellsize+1)/2} ${mazeorigin[2]+15*(i-1)+(cellsize+1)/2}`)
    ])

    addfunc('maze/create/wave/reset', [
      `kill @e[tag=maze-tile]`,
      [...Array(mazecols)].map((xx, x) => (
        mazerows.map((zz, z) => [
          `summon marker ${mazeorigin[0]+15*x} ${mazeorigin[1]} ${mazeorigin[2]+15*z} {Tags:["maze-tile","maze-tile-init"]}`,
          `execute as @e[tag=maze-tile-init] unless entity @s[scores={maze-tile-type=0..}] run scoreboard players set @s maze-tile-type ${zz}`,
          ``
        ])
      )),
      `execute as @e[tag=maze-tile-init] at @s run function generated:story/maze/create/wave/rotate`,
      `execute as @e[tag=maze-tile] at @s run function generated:story/maze/create/wave/initconnections`
    ])

    addfunc('maze/create/wave/rotate', [
      `tag @s remove maze-tile-init`,
      `setblock ~ ~${-(cellsize+1)/2-1} ~ air`,
      `setblock ~ ~${-(cellsize+1)/2-1} ~ minecraft:structure_block[mode=save]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"hitchhike:maze/tmptile",posX:-5,posY:1,posZ:-5,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:11,sizeY:11,sizeZ:11}`,
      `setblock ~ ~${-(cellsize+1)/2-2} ~ redstone_block`,
      `setblock ~ ~${-(cellsize+1)/2-2} ~ air`,
      reflections.map((ref, refi) => rotations.map((rot, roti) => {
        let i = refi * rotations.length + roti;
        if (i == 0) return [];
        let y = 15*i;
        let offsetx = (roti+1)%4 < 2 ? -5 : 5;
        let offsetz = roti < 2 ? -5 : 5;

        return [
          `summon marker ~ ~${y} ~ {Tags:["maze-tile","maze-tile-dupe-init"]}`,
          `setblock ~ ~${y-(cellsize+1)/2-1} ~ air`,
          `setblock ~ ~${y-(cellsize+1)/2-1} ~ minecraft:structure_block[mode=load]{author:"",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"${ref}",mode:"LOAD",name:"hitchhike:maze/tmptile",posX:${refi ? offsetz : offsetx},posY:1,posZ:${refi ? -offsetx: offsetz},powered:0b,rotation:"${rot}",seed:0L,showair:0b,showboundingbox:0b,sizeX:11,sizeY:11,sizeZ:11}`,
          `setblock ~ ~${y-(cellsize+1)/2-2} ~ redstone_block`,
          `setblock ~ ~${y-(cellsize+1)/2-2} ~ air`
        ]
      })),
      `scoreboard players operation @e[tag=maze-tile-dupe-init] maze-tile-type = @s maze-tile-type`,
      `tag @e remove maze-tile-dupe-init`
    ])

    addfunc('maze/create/wave/initconnections', [
      `scoreboard players set @s maze-connections 0`,
      neighbors.map((n, i) => [
        `execute if block ~${n[0]*(cellsize+1)/2} ~${n[1]*(cellsize+1)/2} ~${n[2]*(cellsize+1)/2} lime_stained_glass run scoreboard players add @s maze-connections ${1 << i}`
      ])
    ])


    addfunc('sawyer/maze/awaitpathend', [
      `scoreboard players set #tmp maze 0`,
      `execute store success score #tmp maze at @e[tag=path-goal,tag=maze-node] positioned ~${-(cellsize-1)/2} ~${-(cellsize-1)/2} ~${-(cellsize-1)/2} if entity @a[dx=${cellsize},dz=${cellsize},dy=${cellsize}] run function hitchhike:story/sawyer/maze/goalreached`,
      `execute if score enabled maze matches 1 if score #tmp maze matches 0 run schedule function generated:story/sawyer/maze/awaitpathend 5t`
    ])

    schedule([
      `execute if score enabled maze matches 1 unless entity @e[tag=npc-sawyer,scores={dialogue-status=5}] run playsound minecraft:entity.guardian.attack neutral @a -1400.0 16 -174.0 0.4 2`,
      `execute if score enabled maze matches 1 unless entity @e[tag=npc-sawyer,scores={dialogue-status=5}] as @a[x=-1403,y=11,z=-175,dx=5,dy=12,dz=1] run function hitchhike:story/sawyer/maze/warp`
    ], 2, functions)

    genseq('sawyer/finish_maze', {
      cmds: [
        `function hitchhike:story/maze/disable`,
        'tp @a[tag=!admin] 952 70 -1',
        'spawnpoint @a 1007 59 59',
        'time set 11500',
        'gamerule doDaylightCycle true'
      ],
      next: [
        {
          wait: 1500,
          seq: {
            cmds: [
              `gamerule doDaylightCycle false`,
              `time set 13000`
            ]
          }
        }
      ]
    })
  })();

  // Fountain

  (() => {
    const coincount = Object.keys(item.money).length;
    // summon of coin items for display
    addfunc('fountain/spawn/random', [
      'function generated:rng/rng',
      `scoreboard players operation rng vars += _rngmin vars`,
      Object.values(item.money).map((v, i)=>`execute if score rng vars matches ${i} run summon item ~ ~ ~ {Item:${toSnbt(Object.assign({Count:'1b'}, v))}}`)
    ])

    schedule([
      `scoreboard players set _rngm vars ${coincount}`,
      `scoreboard players set _rngmin vars 0`,
      'execute positioned 898.5 61 -61.5 if entity @a[tag=fountainous] if predicate hitchhike:onethird run function generated:story/fountain/spawn/random',
      'execute positioned 892.5 61 -61.5 if entity @a[tag=fountainous] if predicate hitchhike:onethird run function generated:story/fountain/spawn/random'
    ], 10, functions)


    schedule([
      'execute if entity @a[tag=fountainous] run function generated:story/fountain/scheduled/12t'
    ], 12, functions)

    addfunc('fountain/scheduled/12t', [
      `scoreboard players set _rngm vars 2`,
      `scoreboard players set _rngmin vars 0`,
      'execute positioned 899.5 54.5 -82.5 if predicate generated:coinflip run function generated:story/fountain/spawn/random',
      'execute positioned 899.5 54.5 -82.5 if predicate generated:coinflip run function generated:story/fountain/spawn/random',
      `scoreboard players set _rngmin vars ${coincount-2}`,
      'execute positioned 899.5 54.5 -92.2 run function generated:story/fountain/spawn/random',
      'execute positioned 891.5 56.5 -92.2 run function generated:story/fountain/spawn/random',
      `scoreboard players set _rngmin vars 2`,
      `scoreboard players set _rngm vars ${coincount-4}`,
      'execute positioned 893.5 60.5 -85.5 if predicate hitchhike:onetwelth run function generated:story/fountain/spawn/random',
      'execute positioned 894.5 60.5 -84.5 if predicate hitchhike:onetwelth run function generated:story/fountain/spawn/random',
      'execute positioned 895.5 60.5 -85.5 if predicate hitchhike:onetwelth run function generated:story/fountain/spawn/random',
      'execute positioned 896.5 60.5 -84.5 if predicate hitchhike:onetwelth run function generated:story/fountain/spawn/random',
      'execute positioned 897.5 60.5 -85.5 if predicate hitchhike:onetwelth run function generated:story/fountain/spawn/random',
      'execute positioned 899.5 54.5 -90.5 if predicate hitchhike:onethird run function generated:story/fountain/spawn/random',
      'execute positioned 891.5 54.5 -90.5 if predicate hitchhike:onethird run function generated:story/fountain/spawn/random',
    ])

    addfunc('fountain/jar/gettokens', [
      'setblock 915 59 -83 stone',
      'clone 914 55 -79 914 55 -79 914 49 -79',
      'setblock 914 49 -79 air destroy',
      'schedule function generated:story/fountain/jar/spawntokens 2t',
      'data modify block 914 55 -79 Items set value []',
      'schedule function generated:story/fountain/jar/finishgettokens 80t'
    ])

    addfunc('fountain/jar/spawntokens', [
      'execute positioned 914 49 -79 run function generated:change/count',
      'scoreboard players operation dec change = count change',
      'scoreboard players operation dec change /= 10 const',
      'execute if score dec change matches 101.. run scoreboard players set dec change 100',
      'scoreboard players operation #tmp fishjar = dec change',
      'execute if score #tmp fishjar matches 1.. run function generated:story/fountain/jar/_spawntoken',
      'scoreboard players operation dec change *= 10 const',
      'execute positioned 914 49 -79 run function generated:change/decrement',
      'execute positioned 914 49 -79 run tp @e[type=item,distance=..1] 913 59 -79',
    ])

    addfunc('fountain/jar/_spawntoken', [
      'scoreboard players remove #tmp fishjar 1',
      `summon item 913 59 -79 {Motion:[0.5f,0.0f,0.0f],Item:${toSnbt(Object.assign({Count:'1b'}, item.btc))}}`,
      'execute if score #tmp fishjar matches 1.. run function generated:story/fountain/jar/_spawntoken'
    ])

    addfunc('fountain/jar/finishgettokens', [
      // `setblock 914 53 -79 redstone_wire`,
      `setblock 915 59 -83 air`
    ])

    // schedule([
    //   'scoreboard players set _rngm vars 4',
    //   'setblock 895 40 -73 water[level=1]',
    //   'setblock 896 40 -74 water[level=1]',
    //   'setblock 895 40 -75 water[level=1]',
    //   'setblock 894 40 -74 water[level=1]',
    //   'function generated:rng/rng',
    //   'execute if score _rngm vars matches 0 run setblock 895 40 -73 water',
    //   'execute if score _rngm vars matches 1 run setblock 896 40 -74 water',
    //   'execute if score _rngm vars matches 2 run setblock 895 40 -75 water',
    //   'execute if score _rngm vars matches 3 run setblock 894 40 -74 water',
    // ])

    addfunc('fountain/jar/updateguess', [
      `execute positioned 914.5 49 -72.5 if entity @e[type=item,distance=..1,nbt={Item:${toSnbt(item.btc)}}] run playsound minecraft:entity.experience_orb.pickup neutral @a 914 56 -73 1`,
      `execute positioned 914.5 49 -72.5 as @e[type=item,distance=..1,nbt={Item:${toSnbt(item.btc)}}] run function generated:story/fountain/jar/_updateguess`,
      `data modify block 914 56 -72 Text3 set value '[{"color":"gold","score":{"name":"#guesscount","objective":"fishjar"}},{"text":".00 Bck"}]'`,
      'execute positioned 914.5 49 -72.5 run tp @e[type=item,distance=..1] 914.5 55 -74.5'
    ])

    addfunc('fountain/jar/_updateguess', [
      'execute store result score #tmp fishjar run data get entity @s Item.Count',
      'scoreboard players operation #guesscount fishjar += #tmp fishjar',
      'kill @s'
    ])

    schedule('function generated:story/fountain/jar/updateguess', 20, functions)

    const jarradii = [1,2,2,2,2,1,1]
    const fillspd = 1; // ticks to wait between fills
    const fillsper = 16; // number of levels per block to go through
    let chimenotes = [6, 8, 10, 12];

    addfunc('fountain/jar/fill', [
      'execute if block 914 55 -73 minecraft:blue_stained_glass run function generated:story/fountain/jar/_fill'
    ])

    addfunc('fountain/jar/_fill', [
      'scoreboard players set #guesscount fishjar 0',
      'fill 923 48 -80 925 48 -78 minecraft:spruce_planks',
      'setblock 924 60 -79 water',
      'schedule function generated:story/fountain/jar/fill/start 65t',
      `kill @e[tag=jar-coin]`
    ])

    addfunc('fountain/jar/fill/start', [
      'scoreboard players set coincount fishjar 0',
      'scoreboard players set #cashcount fishjar 0',
      'function generated:story/fountain/jar/spawn',
      'function generated:story/fountain/jar/fill/0'
    ])

    let _ind = 0;
    let chimeI = 0;
    for(let i = 0; i < jarradii.length; i++) {
      for (let j = 0; j < fillsper; j++) {
        const level = Math.floor(8-8/fillsper*(j+1));
        const r = jarradii[i];
        addfunc(`fountain/jar/fill/${_ind++}`, [
          (Math.floor(j/fillsper*4)-1 === Math.floor((j-1)/fillsper*4) ? `playsound minecraft:block.note_block.iron_xylophone neutral @a 921 54 -79 1 ${noteToPitch(Math.floor(chimeI/chimenotes.length)*(chimenotes[1]-chimenotes[0]) + chimenotes[chimeI++%chimenotes.length])}` : ``),
          `execute positioned 924 ${49+i} -79 run fill ~${-r} ~ ~${-r} ~${r} ~ ~${r} water[level=${level}] replace ${j == 0 ? "air" : "water"}`,
          `schedule function generated:story/fountain/jar/fill/${_ind} ${fillspd}t`//
        ])
      }
    }

    addfunc(`fountain/jar/fill/${_ind}`, [
      'setblock 924 60 -79 air',
      'setblock 914 55 -73 minecraft:blue_stained_glass_pane'
    ])

    addfunc('fountain/jar/spawn', [
      `scoreboard players add coincount fishjar 1`,
      `scoreboard players set _rngm vars ${coincount}`,
      `function generated:rng/rng`,
      Object.entries(item.money).map(([k, v], i)=>[
        // `execute if score rng vars matches ${i} run scoreboard players add #cashcount fishjar ${k}`,
        `execute if score rng vars matches ${i} run summon axolotl 924 59 -79 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["invisible","jar-coin"],Passengers:[{id:"minecraft:item",Age:-32768,PickupDelay:32767,Tags:["jar-coin"],Item:${toSnbt(Object.assign({Count:'1b'}, v))}}],ActiveEffects:[{Id:14b,Amplifier:2147483647b,Duration:0}]}`
      ]),
      `execute unless score coincount fishjar matches 50.. run function generated:story/fountain/jar/spawn`
    ])

    addfunc('fountain/jar/drain', [
      'fill 921 49 -76 927 55 -82 water[level=1] replace water',
      'clone 925 42 -78 923 42 -80 923 48 -80',
      'fill 925 48 -80 923 48 -78 water[level=1] replace water',
      'setblock 914 55 -73 minecraft:blue_stained_glass',
      `scoreboard players set chimeIndex fishjar 0`,
      `setblock 914 56 -85 minecraft:barrier`,
      'schedule function generated:story/fountain/jar/incrementcount 5t',
      'schedule function generated:story/fountain/jar/speedaxolotls 160t'
    ])

    addfunc('fountain/jar/speedaxolotls', [
      'effect give @e[type=axolotl,tag=jar-coin] speed 1000000 0 true',
      'execute as @e[tag=jar-coin,type=minecraft:axolotl] run data modify entity @s Air set value -20'
    ])

    addfunc('fountain/jar/incrementcount', [
      `kill @e[tag=jar-coin,type=axolotl,x=923,y=44,z=-80,dx=2,dz=2,dy=3]`,
      `tp @e[tag=jar-coin,type=item,x=923,y=44,z=-80,dx=2,dz=2,dy=0,sort=random,limit=1] 914 49 -85`,
      `execute positioned 914 55 -85 run function generated:change/count`,
      `execute unless score count change = #cashcount fishjar run function generated:story/fountain/jar/drain/chime`,
      `scoreboard players operation #cashcount fishjar = count change`,
      'scoreboard players operation c_B fishjar = #cashcount fishjar',
      'scoreboard players operation c_B fishjar /= 100 const',
      'scoreboard players operation c_b fishjar = #cashcount fishjar',
      'scoreboard players operation c_b fishjar %= 100 const',
      `data modify block 914 56 -86 Text3 set value '[{"color":"gold","score":{"name":"c_B","objective":"fishjar"}},{"text":"."},{"score":{"name":"c_b","objective":"fishjar"}},{"text":" Bck"}]'`,
      'execute as @e[tag=jar-coin,type=item] unless entity @s[x=914,y=55,z=-85,dx=0,dy=0,dz=0] run tag @s add jar-coin-unfinished',
      `execute if entity @e[tag=jar-coin-unfinished,type=item] run schedule function generated:story/fountain/jar/incrementcount 5t`,
      `execute unless entity @e[tag=jar-coin-unfinished,type=item] run schedule function generated:story/fountain/jar/endcount 20t`,
      'tag @e remove jar-coin-unfinished'
    ])

    chimenotes = [10, 11, 12, 13];
    addfunc('fountain/jar/drain/chime', [
      [...Array(50)].map((x,i)=>`execute if score chimeIndex fishjar matches ${i} run playsound minecraft:block.note_block.bit neutral @a 914 56 -85 1 ${noteToPitch(Math.floor(i/chimenotes.length)*(chimenotes[1]-chimenotes[0]) + chimenotes[i++%chimenotes.length])}`),
      `scoreboard players add chimeIndex fishjar 1`
    ])

    addfunc('fountain/jar/endcount', [
      `setblock 914 56 -85 minecraft:air`,
      `scoreboard players operation #tmp fishjar = #guesscount fishjar`,
      `scoreboard players operation #tmp fishjar *= 100 const`,
      `scoreboard players operation #tmp fishjar -= #cashcount fishjar`,
      `execute if score #tmp fishjar matches -250..250 run function hitchhike:story/fountain/jar/success`,
      `execute unless score #tmp fishjar matches -250..250 run function hitchhike:story/fountain/jar/fail`
    ])

    schedule([
      'particle minecraft:current_down 896.5 63.9 -60.0 0.25 0 0.5 0 15',
      'particle minecraft:splash 896.5 63.9 -60.0 0.25 0 0.5 0 6',
      'particle minecraft:bubble_column_up 894.5 63.9 -60.0 0.25 0 0.5 0 15',
      'particle minecraft:splash 894.5 63.9 -60.0 0.25 0 0.5 0 6'
    ], 3, functions)

    schedule([
      'execute unless entity @a[x=900,y=55,z=-80,dx=15,dy=2,dz=2] run scoreboard players set door fishjar 0',
      'execute if entity @a[x=906,y=55,z=-80,dx=6,dy=2,dz=2] run scoreboard players set door fishjar 1',
      'execute if score _doorenabled fishjar matches 1 unless score _door fishjar = door fishjar run function generated:story/fountain/jar/doortoggle'
    ], 5, functions)

    addfunc('fountain/jar/doortoggle', [
      'scoreboard players add _door fishjar 1',
      'scoreboard players operation _door fishjar %= 2 const',
      'setblock 908 53 -79 redstone_block'
    ])

  })();

  (()=>{
    const trainlocs = [
      [1001,105,444]
    ]

    schedule(`execute if score #hurm-done vars matches 1 unless entity @e[tag=lake-boat,type=boat,x=1073,y=114,z=390,dx=1,dz=2] run summon boat 1074.0 113.5 391.5 {Invulnerable:1b,Type:"spruce",Tags:["lake-boat"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["aec","lake-boat"]}]}`, 100, functions);


    // addfunc('lake/reset', [
    //   '#> Resets lake decorations (mainly lilypads)',
    //   [
    //     [1141,40,370,1165,68,402]
    //   ].map(x=>`clone ${x[0]} ${x[1]} ${x[2]} ${x[3]} ${x[4]} ${x[5]} ${x[0]} ${x[1]+60} ${x[2]}`)
    // ])

    // addfunc('lake/dolphintrain/summon', [
    //   [...Array(5)].map((x,i)=>i-3).map(i=>`execute positioned ~${i} if predicate hitchhike:onetwelth run summon dolphin ~ ~ ~ {ActiveEffects:[{Id:30b,Amplifier:10b,Duration:2147483647}],Rotation:[180.0f,0.0f],Tags:["dolphin-train"]}`)
    // ])

    // addfunc('lake/dolphintrain/tick', [
    //   'data modify entity @s Motion[0] set value 0',
    //   'execute as @s run data modify entity @s Rotation set value [180.0f,-20.0f]'
    // ])

    // addfunc('lake/pufferswarm', [
    //   'summon drowned ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,Tags:["lake-puffer","lake-puffer-init","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647}],Attributes:[{Name:generic.movement_speed,Base:0.7}]}',
    //   [...Array(10)].map(x=>`summon pufferfish ~ ~ ~ {Invulnerable:1b,Leashed:1b,PersistenceRequired:1b,Tags:["lake-puffer","lake-puffer-init"],Attributes:[{Name:generic.movement_speed,Base:1},{Name:generic.attack_damage,Base:4}],Leash:{UUID:[I;0,0,0,0]}}`),
    //   'execute as @e[tag=lake-puffer-init,type=pufferfish] run data modify entity @s Leash.UUID set from entity @e[tag=lake-puffer-init,type=drowned,limit=1] UUID',
    //   'tag @e remove lake-puffer-init'
    // ])

    addfunc('lake/piranha/tick', [
      'scoreboard players operation #tmp piranha-id = @s piranha-id',
      'execute as @e[type=tropical_fish,tag=lake-piranha] if score @s piranha-id = #tmp piranha-id facing entity @p eyes run tag @s add lake-piranha-selected',
      'tp @e[tag=lake-piranha-selected] ~ ~ ~ ~ ~',
      'execute unless entity @e[tag=lake-piranha-selected] as @s run function hitchhike:kill',
      'tag @e remove lake-piranha-selected'
      // 'tp @e[tag=piranha-selected] @s',
      // 'tag @e remove piranha-selected'
    ])

    addfunc('lake/piranha/summon', [
      `summon drowned ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:0b,IsBaby:1b,Tags:["invisible","lake-piranha","lake-piranha-init"],CustomName:'{"text":"piranha","color":"red"}',Attributes:[{Name:generic.follow_range,Base:30},{Name:generic.movement_speed,Base:0.9},{Name:generic.attack_damage,Base:15},{Name:zombie.spawn_reinforcements,Base:0}]}`,
      'summon tropical_fish ~ ~ ~ {Invulnerable:1b,Tags:["lake-piranha","lake-piranha-init"],Variant:118358272}',
      'scoreboard players operation @e[tag=lake-piranha-init] piranha-id = max piranha-id',
      'scoreboard players add max piranha-id 1',
      'execute unless block ~ ~ ~ water unless block ~ ~ ~ air positioned ~ ~1 ~ run function generated:story/lake/piranha/summon/findwater',
      'tag @e remove lake-piranha-init'
    ])

    addfunc('lake/piranha/summon/findwater', [
      'tp @e[tag=lake-piranha-init] ~ ~ ~',
      'execute unless block ~ ~ ~ water unless block ~ ~ ~ air positioned ~ ~1 ~ run function generated:story/lake/piranha/summon/findwater'
    ])

    schedule([
      'execute at @a[tag=lake-player-wet] positioned ~ 105 ~ run function generated:story/lake/piranha/summon',
      'execute at @a[tag=lake-player-wet] positioned ~ 105 ~ run function generated:story/lake/piranha/summon',
      'effect give @a[tag=lake-player-wet] minecraft:blindness 4 0 true',
      'effect give @a[tag=lake-player-wet] minecraft:slowness 1 9 true'
    ], 10, functions);
  })();

  (() => {
    addfunc('hurm/reset_coal', [
      'kill @e[tag=hurm-mine-coal]',
      [
        '1244 115 311',
        '1243 117 311',
        '1242 116 311',
        '1248 116 317',
        '1249 115 318',
        '1244 111 321',
        '1243 111 322',
        '1244 111 324',
        '1247 111 323',
        '1240 117 322',
        '1241 119 322',
        '1240 120 320'
      ].map(x=>`summon marker ${x} {Tags:["hurm-mine-coal"]}`)
    ])

    const tree_ranges = [
      [1181, 123, 276, 1188, 135, 284],
      [1168, 122, 276, 1177, 135, 285],
      [1172, 125, 291, 1179, 136, 299]
    ]

    addfunc('hurm/reset_trees', [
      tree_ranges.map((x, i)=>[
        `clone ${x[0]} ${x[1]-30} ${x[2]} ${x[3]} ${x[4]-30} ${x[5]} ${x[0]} ${x[1]} ${x[2]}`,
        `scoreboard players set -tree${i} hurm-chopped 0`
      ]),
    ])

    addfunc('hurm/handle_chop', [
      'scoreboard players set @a hurm-chopped 0',
      'scoreboard players add -chopped hurm-chopped 1',
      tree_ranges.map((x, i) => {
        addfunc(`hurm/handle_chop/${i}`, [
          `fill ${x[0]} ${x[1]+5} ${x[2]} ${x[3]} ${x[4]} ${x[5]} air destroy`,
          `clone ${x[0]} ${x[1]-60} ${x[2]} ${x[3]} ${x[4]-60} ${x[5]} ${x[0]} ${x[1]} ${x[2]}`,
          `particle minecraft:large_smoke ${(x[0]+x[3])/2} ${(x[1]+x[4])/2} ${(x[2]+x[5])/2} ${(x[0]-x[3])/4} ${(x[1]-x[4])/4} ${(x[2]-x[5])/4} 0 2000`,
          `scoreboard players set -tree${i} hurm-chopped 1`,
          `summon item ${(x[0]+x[3])/2} ${x[4]} ${(x[2]+x[5])/2} {Tags:["hurm-item"],PickupDelay:20,Age:-32768,Item:{id:"spruce_log",Count:1b}}`,
          `summon item ${(x[0]+x[3])/2} ${x[4]} ${(x[2]+x[5])/2} {Tags:["hurm-item"],PickupDelay:20,Age:-32768,Item:{id:"stick",Count:1b}}`
        ])
        return [
          `execute if score -tree${i} hurm-chopped matches 0 unless blocks ${x[0]} ${x[1]-30} ${x[2]} ${x[3]} ${x[4]-30} ${x[5]} ${x[0]} ${x[1]} ${x[2]} all run function generated:story/hurm/handle_chop/${i}`
        ]
      })
    ])

    genseq('hurm/daytime_seq', {
      cmds: [
        'schedule clear generated:story/sawyer/finish_maze-0',
        'time set 13000',
        'gamerule doDaylightCycle true'
      ],
      next: [
        {
          wait: 2500,
          seq: {
            cmds: [
              `gamerule doDaylightCycle false`,
              `time set 15500`
            ]
          }
        }
      ]
    })

    genseq('hurm/nighttime_seq', {
      cmds: [
        'schedule clear generated:story/hurm/daytime_seq-0',
        'time set 15500',
        'gamerule doDaylightCycle true'
      ],
      next: [
        {
          wait: 4500,
          seq: {
            cmds: [
              `gamerule doDaylightCycle false`,
              `time set 20000`
            ]
          }
        }
      ]
    })

    genseq('hurm/eat_fish', {
      cmds: [
        `tp @e[tag=npc-hurm,limit=1] 1075.7 125 355.5 -90 30`,
        `tag @e[tag=npc-hurm,limit=1] add npc-unface`
      ],
      next: [
        {
          wait: 4,
          seq: {
            cmds: [
              `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1`,
              `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
            ],
            next: [
              {
                wait: 6,
                seq: {
                  cmds: [
                    `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 0.95`,
                    `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                  ],
                  next: [
                    {
                      wait: 4,
                      seq: {
                        cmds: [
                          `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1.05`,
                          `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                        ],
                        next: [
                          {
                            wait: 4,
                            seq: {
                              cmds: [
                                `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1.025`,
                                `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                              ],
                              next: [
                                {
                                  wait: 6,
                                  seq: {
                                    cmds: [
                                      `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1`,
                                      `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                                    ],
                                    next: [
                                      {
                                        wait: 6,
                                        seq: {
                                          cmds: [
                                            `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 0.95`,
                                            `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                                          ],
                                          next: [
                                            {
                                              wait: 4,
                                              seq: {
                                                cmds: [
                                                  `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1`,
                                                  `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                                                ],
                                                next: [
                                                  {
                                                    wait: 6,
                                                    seq: {
                                                      cmds: [
                                                        `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1.05`,
                                                        `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                                                      ],
                                                      next: [
                                                        {
                                                          wait: 5,
                                                          seq: {
                                                            cmds: [
                                                              `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1.01`,
                                                              `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                                                            ],
                                                            next: [
                                                              {
                                                                wait: 6,
                                                                seq: {
                                                                  cmds: [
                                                                    `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1`,
                                                                    `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                                                                  ],
                                                                  next: [
                                                                    {
                                                                      wait: 4,
                                                                      seq: {
                                                                        cmds: [
                                                                          `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1.07`,
                                                                          `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                                                                        ],
                                                                        next: [
                                                                          {
                                                                            wait: 4,
                                                                            seq: {
                                                                              cmds: [
                                                                                `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1`,
                                                                                `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                                                                              ],
                                                                              next: [
                                                                                {
                                                                                  wait: 5,
                                                                                  seq: {
                                                                                    cmds: [
                                                                                      `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1.05`,
                                                                                      `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                                                                                    ],
                                                                                    next: [
                                                                                      {
                                                                                        wait: 5,
                                                                                        seq: {
                                                                                          cmds: [
                                                                                            `data modify entity @e[tag=npc-hurm,limit=1] HandItems[0] set value {}`,
                                                                                            `execute at @e[tag=npc-hurm,limit=1] run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 0.95`,
                                                                                            `execute as @e[tag=npc-hurm,limit=1] anchored eyes run particle item cooked_salmon ^ ^ ^0.2 0 0 0 0.05 5`
                                                                                          ],
                                                                                          next: [
                                                                                            {
                                                                                              wait: 15,
                                                                                              seq: {
                                                                                                cmds: [
                                                                                                  `execute at @e[tag=npc-hurm,limit=1] run playsound entity.player.burp neutral @a ~ ~ ~ 10 1`,
                                                                                                  `tag @e[tag=npc-hurm,limit=1] remove npc-unface`
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

  schedule('effect give @e[tag=npc-samsung] minecraft:blindness 10 0 false', 100, functions)

  schedule([
    '#> Teleport out softlocked items',
    'tp @e[type=item,x=891,y=64,z=-153,dx=0,dy=1,dz=0] 891 65 -154',
    // 'tp @e[type=item,x=984,y=64,z=-169,dx=0,dy=1,dz=0] 984 65 -168'
  ], 20, functions);

  (()=>{
    addfunc(`stores/countpay`, [
      `execute store result score _count stores run data get entity @s Item.Count`,
      `execute store result score _cost stores run data get entity @s Item.tag.cost`,
      `scoreboard players operation _count stores *= _cost stores`,
      `scoreboard players operation paymentcount stores += _count stores`
    ])

    const stores = {
      safeway: {
        welcome: "Hope you had a great time shopping!",
        return: [
          "Let me count up your items real quick...",
          "Great purchase, I have some of these myself.",
          "Hope you found what you wanted!",
          "Keep in mind that you can always sign up for our rewards system!",
          "Enjoyed your time shopping here?",
          "Nice weather, huh? If you ignore that whole storm, that is..."
        ],
        success: [
          "Thanks for shopping at Safeway! Your change is ",
          {"score":{"name":"_B"}},
          ".",
          {"score":{"name":"_b"}},
          " Bck."
        ],
        failmessages: [
          [
            "The total charge is ",
            {"score":{"name":"_B"}},
            ".",
            {"score":{"name":"_b"}},
            " Bck. Please place your payment in the space to your left!"
          ],
          [
            "It seems like you\'re ",
            {"score":{"name":"_B"}},
            ".",
            {"score":{"name":"_b"}},
            " Bck short. Don\'t worry, addition can be hard for all of us. Just place the rest of your money on the counter and I can do the math for you!"
          ]
        ],
        unsoldrange: [891, 65, -154, 891, 65, -154],
        paypos: [893.0, 64.5, -153.5],
        shoprange:[881, -169, 917, -151],
        lock: ["<",{"text":"Harold Pell","color":"#eb7060","bold":true},"> Hey! I think you forgot to pay for your items!"]
      },
      clothes: {
        welcome: "Set on your new fit? I'll ring them up for you right here!",
        return: [
          [
            "I can tell these clothes will fit you ",
            {
              "italic": true,
              "text":"perfectly"
            },
            "."
          ],
          "I hope you enjoyed our fashionable selection!"
        ],
        success: [
          "You're all set with your new clothes! ",
          {"score":{"name":"_B"}},
          ".",
          {"score":{"name":"_b"}},
          " Bck is your change."
        ],
        failmessages: [
          [
            "That's a total of ",
            {"score":{"name":"_B"}},
            ".",
            {"score":{"name":"_b"}},
            " Bck. Just place your payment on the counter here!"
          ],
          [
            "It seems you\'re missing ",
            {"score":{"name":"_B"}},
            ".",
            {"score":{"name":"_b"}},
            " Bck. Just place the rest of your money on the counter and I'll complete your purchase!"
          ]
        ],
        unsoldrange: [983, 65, -168, 985, 65, -168],
        paypos: [986.5, 65.0, -167.5],
        shoprange:[973, -172, 992, -153],
        lock: ["<",{"text":"Jean Slimm","color":"#2387d9","bold":true},"> You can't leaving without paying."]
      },
      subway: {
        welcome: "Are you ready to order yet?",
        return: [
          "Alright, I've got that all down.",
          "I'll make that for you real quick..."
        ],
        success: [
          "Have a great day. Here, have your change, ",
          {"score":{"name":"_B"}},
          ".",
          {"score":{"name":"_b"}},
          " Bck."
        ],
        failmessages: [
          [
            "That\'ll be ",
            {"score":{"name":"_B"}},
            ".",
            {"score":{"name":"_b"}},
            " Bck total."
          ],
          [
            "You\'re still missing ",
            {"score":{"name":"_B"}},
            ".",
            {"score":{"name":"_b"}},
            " Bck. Mind getting the rest paid up?"
          ]
        ],
        unsoldrange: [950, 64, -147, 952, 65, -145],
        paypos: [950.5, 64.5, -144.5],
        shoprange:[941, -161, 955, -141],
        lock: ["<",{"text":"Silas Connelly","color":"#f0d792","bold":true},"> You're not gonna finish your order?"]
      },
      boba: {
        welcome: "Welcome to SiTea, voted the best boba shop in town for the past 10 years!",
        return: [
          "Alright, have you made your choices?",
          "I hope you enjoy your drinks!"
        ],
        success: [
          "Alright, ",
          {"score":{"name":"_B"}},
          ".",
          {"score":{"name":"_b"}},
          " Bck is your change. Have a nice day!"
        ],
        failmessages: [
          [
            "Your total today will be ",
            {"score":{"name":"_B"}},
            ".",
            {"score":{"name":"_b"}},
            " Bck."
          ],
          [
            "It seems like you\'re short ",
            {"score":{"name":"_B"}},
            ".",
            {"score":{"name":"_b"}},
            " Bck. Drop the money here once you've got that added up!"
          ]
        ],
        unsoldrange: [996, 65, -168, 996, 65, -166],
        paypos: [996.5, 65, -166.5],
        shoprange:[993, -173, 1007, -153],
        lock: ["<",{"text":"Brett Chen","color":"#d65454","bold":true},"> Don't you want anything?"]
      },
      ramen: {
        welcome: "Ready for your order?",
        return: [
          "Thank you for your order!",
          "Make sure to leave a good review if you enjoy your food!"
        ],
        success: [
          {"score":{"name":"_B"}},
          ".",
          {"score":{"name":"_b"}},
          " Bck is your change. ありがとございました！"
        ],
        failmessages: [
          [
            "That'll be ",
            {"score":{"name":"_B"}},
            ".",
            {"score":{"name":"_b"}},
            " Bck for your food."
          ],
          [
            "You seem to be short some money. The charge left is ",
            {"score":{"name":"_B"}},
            ".",
            {"score":{"name":"_b"}},
            "Bck."
          ]
        ],
        unsoldrange: [1039, 65, -153, 1039, 65, -151],
        paypos: [1039.5, 65, -151.5],
        shoprange:[1029, -161, 1043, -141],
        lock: ["<",{"text":"Otori Okawa","color":"#8723a6","bold":true},"> Did you forget to finish your order?"]
      },
      starbucks: {
        welcome: "Alright, what can I get you? The menu is on the billboard right above me.",
        return: [
          "Hi, what can I get for you?",
          "Hey, what do you want today?"
        ],
        success: [
          "Great! Here's ",
          {"score":{"name":"_B"}},
          ".",
          {"score":{"name":"_b"}},
          " Bck for change. Enjoy your day!"
        ],
        failmessages: [
          [
            "Alright, that\'ll be a total of ",
            {"score":{"name":"_B"}},
            ".",
            {"score":{"name":"_b"}},
            " Bck for your drink."
          ],
          [
            "Sorry, I\'m still missing' ",
            {"score":{"name":"_B"}},
            ".",
            {"score":{"name":"_b"}},
            " Bck. Don't worry, I can calculate the change for you."
          ]
        ],
        unsoldrange: [1046, 65, -150, 1047, 65, -150],
        paypos: [1047.5, 65, -149.5],
        shoprange:[1044, -161, 1060, -141],
        lock: ["<",{"text":"Bethany Norma","color":"#00704A","bold":true},"> Hey, leaving without a drink?"]
      }
    }

    addfunc(`stores/reset`, [
      Object.entries(stores).map(([k, v]) => [
        `data modify storage hitchhike:stores welcome.${k} set value ${rawJson(v.welcome)}`,
        `forceload add ${v.shoprange.join(' ')}`
      ]),
      `kill @e[type=armor_stand,tag=armorstand-clothes-display]`,
      item.store.commands,
      `data modify storage hitchhike:stores ramenmenu set value ${rawJson([
        "Would you like ",
        {
          text: "[Tonkotsu]",
          color: "#bfa569",
          bold: true,
          italic: true,
          clickEvent: {
            action: "run_command",
            value: `/trigger storetrigger set ${hash("tonkotsu")}`
          },
          hoverEvent: {
            action: "show_item",
            contents: {
              id: eval(item.store.sold.ramen.tonkotsu.id),
              tag: toSnbt(item.store.sold.ramen.tonkotsu.tag)
            }
          }
        },
        ", ",
        {
          text: "[Shoyu]",
          color: "#bd7d5c",
          bold: true,
          italic: true,
          clickEvent: {
            action: "run_command",
            value: `/trigger storetrigger set ${hash("shoyu")}`
          },
          hoverEvent: {
            action: "show_item",
            contents:  {
              id: eval(item.store.sold.ramen.shoyu.id),
              tag: toSnbt(item.store.sold.ramen.shoyu.tag)
            }
          }
        },
        ", or ",
        {
          text: "[Miso]",
          color: "#b87f39",
          bold: true,
          italic: true,
          clickEvent: {
            action: "run_command",
            value: `/trigger storetrigger set ${hash("miso")}`
          },
          hoverEvent: {
            action: "show_item",
            contents: {
              id: eval(item.store.sold.ramen.miso.id),
              tag: toSnbt(item.store.sold.ramen.miso.tag)
            }
          }
        },
        " ramen?"
      ])}`
    ])

    addfunc(`stores/tick`, [
      Object.entries(stores).map(([k, v], i) => {
        const parseScores = (obj: Array<any>): any => {
          return obj.map((x: any)=> {
            if (typeof x !== 'string' && x.score) {
              return {"score":{
                "name":`${i}${x.score.name}`,
                "objective":"stores"
              }}
            }

            return x
          })
        }

        const payrangesel = `x=${v.unsoldrange[0]},y=${v.unsoldrange[1]},z=${v.unsoldrange[2]},dx=${v.unsoldrange[3]-v.unsoldrange[0]},dy=${v.unsoldrange[4]-v.unsoldrange[1]},dz=${v.unsoldrange[5]-v.unsoldrange[2]}`;
        const unsolditems = `@e[tag=paying,type=item,${payrangesel}]`;

        addfunc(`stores/${k}/pay`, [
          `#prevent player pickup for the next second`,
          `execute as ${unsolditems} run data modify entity @s PickupDelay set value 20`,
          `# count payment and attempt to pay`,
          `scoreboard players set paymentcount stores 0`,
          `execute as ${unsolditems} run function generated:story/stores/countpay`,
          `scoreboard players operation dec change = paymentcount stores`,
          `execute positioned ${v.paypos[0].toFixed(4)} ${v.paypos[1].toFixed(4)} ${v.paypos[2].toFixed(4)} run function generated:change/decrement`,
          `# handle fail and success of payment`,
          `execute if score dec-success change matches 0 run function generated:story/stores/${k}/_payfail`,
          `execute if score dec-success change matches 1 run function generated:story/stores/${k}/_paysuccess`,
          `# make bov counts readable for later serialization`,
          `scoreboard players operation ${i}_B stores = ${i}_b stores`,
          `scoreboard players operation ${i}_B stores /= 100 const`,
          `scoreboard players operation ${i}_b stores %= 100 const`
        ])

        addfunc(`stores/${k}/_payfail`, [
          'scoreboard players operation paymentcount stores -= count change',
          `scoreboard players operation ${i}_b stores = paymentcount stores`,
          `execute if score count change matches 0 run data modify storage hitchhike:stores success.${k} set value ${rawJson(parseScores(v.failmessages[0]))}`,
          `execute if score count change matches 1.. run data modify storage hitchhike:stores success.${k} set value ${rawJson(parseScores(v.failmessages[1]))}`,
          `function generated:story/stores/${k}/randreturnmessage`
        ])

        addfunc(`stores/${k}/_paysuccess`, [
          `scoreboard players operation ${i}_b stores = count change`,
          `data modify storage hitchhike:stores success.${k} set value ${rawJson(parseScores(v.success))}`,
          `# sell items.`,
          `function generated:story/stores/${k}/sell`,
          `# Reset welcome message`,
          `data modify storage hitchhike:stores welcome.${k} set value ${rawJson(v.welcome)}`
        ])

        addfunc(`stores/${k}/randreturnmessage`, [
          `scoreboard players set _rngm vars ${v.return.length}`,
          `function generated:rng/rng`,
          v.return.map((x, id)=>`execute if score rng vars matches ${id} run data modify storage hitchhike:stores welcome.${k} set value ${rawJson(x)}`)
        ])

        addfunc(`stores/${k}/sell`, [
          Object.keys(item.store.unsold[k]).map(it=>
            `execute as @e[tag=paying,nbt={Item:{tag:{sold:0b,store:"${k}",item:"${it}"}}}] run data merge entity @s {Item:${toSnbt(item.store.sold[k][it])}}`
          ),
          `tag ${unsolditems} add just-paid`,
          `tag ${unsolditems} remove paying`,
          `tp @e[type=item,tag=just-paid] ${v.paypos[0].toFixed(4)} ${v.paypos[1].toFixed(4)} ${v.paypos[2].toFixed(4)}`,
          `execute as @e[type=item,tag=just-paid] run data modify entity @s Age set value 0`,
          `tag @e remove just-paid`
        ])

        addfunc(`stores/${k}/lock`, [
          `execute as @s[x=${v.shoprange[0]-1},dx=-1000000] at @s run tp @s ${(v.shoprange[0]+1.3).toFixed(4)} ~ ~`,
          `execute as @s[x=${v.shoprange[2]+1},dx=1000000] at @s run tp @s ${(v.shoprange[2]-0.3).toFixed(4)} ~ ~`,
          `execute as @s[z=${v.shoprange[1]-1},dz=-1000000] at @s run tp @s ~ ~ ${(v.shoprange[1]+1.3).toFixed(4)}`,
          `execute as @s[z=${v.shoprange[3]+1},dz=1000000] at @s run tp @s ~ ~ ${(v.shoprange[3]-0.3).toFixed(4)}`,
          `scoreboard players operation @s store_lockT -= @s playtime`,
          `execute unless score @s store_lockT matches 1.. run tellraw @s ${JSON.stringify(v.lock)}`,
          `# set cooldown to some number of ticks`,
          `execute unless score @s store_lockT matches 1.. run scoreboard players set @s store_lockT 20`,
          `scoreboard players operation @s store_lockT += @s playtime`
        ])

        addfunc(`stores/${k}/handletrigger`, [
          Object.entries(item.store.unsold[k]).map(([kk, vv]) => `execute if entity @s[scores={storetrigger=${hash(kk)}}] run give @s ${toGive(<NbtData>vv, 1)}`)
        ])

        return [
          ``,
          `execute as @a[nbt={Inventory:[{tag:{store:"${k}",sold:0b}}]}] at @s unless entity @s[x=${v.shoprange[0]},z=${v.shoprange[1]},dx=${v.shoprange[2]-v.shoprange[0]},dz=${v.shoprange[3]-v.shoprange[1]}] run function generated:story/stores/${k}/lock`,
          `# Kill Thrown Items`,
          `execute as @e[type=item,nbt={Item:{tag:{store:"${k}",sold:0b}}}] at @s unless entity @s[x=${v.shoprange[0]},z=${v.shoprange[1]},dx=${v.shoprange[2]-v.shoprange[0]},dz=${v.shoprange[3]-v.shoprange[1]}] run kill @s`,
          `execute as @e[type=item,tag=!paying,nbt={Item:{store:"${k}",tag:{sold:0b}},Age:0s},x=${v.shoprange[0]},z=${v.shoprange[1]},dx=${v.shoprange[2]-v.shoprange[0]},dz=${v.shoprange[3]-v.shoprange[1]},y=0,dy=255] run data modify entity @s Age set value 5800`,
          `tag @e[type=item,nbt={Item:{tag:{store:"${k}",sold:0b}}}] remove paying`,
          `tag @e[type=item,nbt={Item:{tag:{store:"${k}",sold:0b}}},${payrangesel}] add paying`,
          `execute as ${unsolditems} run data modify entity @s Age set value -32768`,
          `# Deal with triggers`,
          `execute as @a unless score @s storetrigger matches 0 at @s if entity @s[x=${v.shoprange[0]},z=${v.shoprange[1]},dx=${v.shoprange[2]-v.shoprange[0]},dz=${v.shoprange[3]-v.shoprange[1]}] run function generated:story/stores/${k}/handletrigger`,
          `# reset status if no items to buy`,
          `scoreboard players set @e[tag=npc-${k}] dialogue-status 0`,
          `# set status of ${k} to paying`,
          `execute if entity ${unsolditems} run scoreboard players set @e[tag=npc-${k}] dialogue-status 5`
        ]
      }),
      ``,
      `scoreboard players reset @a storetrigger`,
      Object.values(stores).map(v=>[
        `execute as @a at @s if entity @s[x=${v.shoprange[0]},z=${v.shoprange[1]},dx=${v.shoprange[2]-v.shoprange[0]},dz=${v.shoprange[3]-v.shoprange[1]}] run scoreboard players add @s storetrigger 0`,
        `execute as @a at @s if entity @s[x=${v.shoprange[0]},z=${v.shoprange[1]},dx=${v.shoprange[2]-v.shoprange[0]},dz=${v.shoprange[3]-v.shoprange[1]}] run scoreboard players enable @s storetrigger`
      ])
    ])
  })();

  (() => {
    const checkpoints = [
      // garden
      "823.5 117.9375 409.5",
      // main path
      "818.5 113.9375 412.5",
      "825.5 122.9375 454.5",
      "834.5 123.9375 482.5",
      "866.5 129.9375 502.5",
      "896.5 129.9375 482.5",
      "933.5 140.9375 496.5",
      "900.5 169 526.5",
      "888.5 169.5 532.5",
      "884.5 168.9375 541.5",
      "874.5 172.9375 553.5",
      "890.5 182.5 562.5",
      "914.5 187 564.5",
      "933.5 193 585.5",
      "951.5 194 601.5",
      // first hill shortcut
      "830.5 127.5 457.5",
      "841.5 132.5 458.5",
      "848.5 141.5 463.5",
      "861.5 149.5 472.5",
      "867.5 153.5 480.5",
      "881.5 139.9375 477.5",
      // Glacier shortcut
      "886.5 139 516.5",
      "935.5 145.5 498.5",
      "939.5 145.5 495.5",
      "942.5 150.5 498.5",
      "884.5 144 521.5",
      "887.5 149 523.5",
      "887.5 150.5 526.5",
      "882.5 151.5 527.5",
      "870.5 159 541.5",
      "874.5 160.5 538.5",
      "876.5 161 533.5",
      "878.5 164 528.5",
      "880.5 167 533.5",
      "873.5 167 534.5",
      "868.5 165 542.5",
      // Mine section
      "948.5 153.5 504.5",
      "955.5 155.5 504.5",
      "958.5 153.5 508.5",
      "960.5 153.5 518.5",
      "969.5 155 529.5",
      "960.5 158 539.5",
      "967.5 161.5 529.5",
      "970.5 166 540.5",
      "964.5 171 542.5",
      "967.5 173.5 542.5",
      "965.5 176.5 533.5",
      "973.5 179 539.5",
      "969.5 186 543.5",
      // out of mine up snow
      "970.5 197 546.5",
      "966.5 197 554.5",
      "967.5 201.5 551.5",
      "972.5 208 557.5",
      // mountaintop
      "987.5 213.25 584.5",
      "986.5 216 569.5",
      // Puzzle
      "-1999.5 59 -8.5"
    ]

    const checkpointRaw = checkpoints.map(x=> x.split(" ").map(Number));

    const yoffset = 1.375;

    const s = 14/16 * 5/8;

    addfunc('parkour/summoncheckpoints',
      checkpointRaw.map((coords, i)=> [
          `summon armor_stand ${coords[0].toFixed(8)} ${(coords[1]-yoffset).toFixed(8)} ${coords[2].toFixed(8)} ${toSnbt({
            Tags: `["checkpoint-marker","checkpoint-marker-init"]`,
            ArmorItems: `[{},{},{},{id:"minecraft:light_weighted_pressure_plate",Count:1b}]`,
            DisabledSlots:4144959,
            Invulnerable: true,
            Invisible: true,
            NoGravity: true,
            Silent: true,
            Marker: true,
            Small: false
          })}`,
          `scoreboard players set @e[tag=checkpoint-marker-init] checkpoint-id ${hash(checkpoints[i])}`,
          'tag @e remove checkpoint-marker-init'
        ]
      )
    );

    addfunc('parkour/loadchunks',
      checkpointRaw.map(x=> `forceload add ${Math.floor(x[0])} ${Math.floor(x[2])}`)
    );

    schedule(`execute at @e[tag=checkpoint-marker] run particle minecraft:happy_villager ~ ~${0.1+yoffset} ~ 0.09 0.05 0.09 0 1`, 20, functions)

    schedule([
      `scoreboard players add @e[tag=lake-boat,type=boat] lake-entity-age 1`,
      `# Protect boats with riders`,
      `tag @e[tag=lake-boat,type=boat,x=1073,y=114,z=390,dx=1,dz=2] add lake-boat-protected`,
      `tag @e[tag=lake-boat,type=boat,tag=!lake-boat-protected] add match-selectable`,
      `execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat",Tags:["lake-boat"]}}}] run function hitchhike:story/lake/protectboat`,
      `scoreboard players reset @e[tag=lake-boat-protected] lake-entity-age`,
      `tag @e remove lake-boat-protected`,
      `execute as @e[tag=lake-boat,type=boat,scores={lake-entity-age=5}] run data modify entity @s Motion[1] set value -0.3`,
      `kill @e[tag=lake-boat,type=boat,scores={lake-entity-age=10..}]`,
    ], 20, functions)

    addfunc('parkour/updatespawn', [
      `scoreboard players operation #tmp checkpoint-id = @s checkpoint-id`,
      `execute positioned ~ ~${yoffset} ~ align xz run tag @a[dx=0,dy=0,dz=0] add checkpoint-candidate`,
      `execute as @a[tag=checkpoint-candidate] if score @s checkpoint-id = #tmp checkpoint-id run tag @s remove checkpoint-candidate`,
      `scoreboard players operation @a[tag=checkpoint-candidate] checkpoint-id = #tmp checkpoint-id`,
      `playsound minecraft:entity.player.levelup player @a[tag=checkpoint-candidate] ~ ~${yoffset} ~ 0.3`,
      `title @a[tag=checkpoint-candidate] actionbar [{"text":"Checkpoint reached!","color":"green"}]`,
      `scoreboard players set @a[tag=checkpoint-candidate] foodGoal 41`,
      `tag @a remove checkpoint-candidate`
    ])

    addfunc('parkour/respawn', [
      'scoreboard players operation #tmp checkpoint-id = @s checkpoint-id',
      'execute as @e[tag=checkpoint-marker] if score @s checkpoint-id = #tmp checkpoint-id run tag @s add checkpoint-candidate',
      `execute at @e[tag=checkpoint-candidate,limit=1] run tp @s ~ ~${yoffset} ~`,
      'execute if entity @e[tag=checkpoint-candidate] at @s run playsound minecraft:block.respawn_anchor.deplete block @s ~ ~ ~ 0.5 2',
      'execute if entity @e[tag=checkpoint-candidate] run title @s actionbar [{"text":"Returned to checkpoint.","color":"dark_purple"}]',
      'execute unless entity @e[tag=checkpoint-candidate] run title @s actionbar [{"text":"Reach a checkpoint to enable the compass.","color":"red"}]',
      `give @s[nbt=!{Inventory:[{tag:{compass:1b}}]}] ${toGive(item.compass)}`,
      'tag @e remove checkpoint-candidate',
    ])

    addfunc('parkour/throwncompass', [
      'execute store result score #CMP UUID0 run data get entity @s Thrower[0]',
      'execute store result score #CMP UUID1 run data get entity @s Thrower[1]',
      'execute store result score #CMP UUID2 run data get entity @s Thrower[2]',
      'execute store result score #CMP UUID3 run data get entity @s Thrower[3]',
      'tag @a add match-selectable',
      'function hitchhike:uuid/match',
      'execute as @p[tag=match-uuid-select] at @s run function generated:story/parkour/respawn',
      'kill @s'
    ])

    const safeblocks = [
      "andesite_stairs",
      "andesite_slab",
      "light_gray_concrete_powder",
      "dirt_path",
      "coarse_dirt",
      "spruce_stairs",
      "spruce_slab",
      "white_concrete_powder",
    ]

    const corners = [
      [-0.3, -0.3],
      [-0.3, 0.3],
      [0.3, -0.3],
      [0.3, 0.3]
    ]

    addfunc('parkour/offtrail', [
      `tag @a remove parkour-offtrail`,
      `execute as @a[nbt={OnGround:1b}] at @s unless entity @s[y=255,dy=100] ${safeblocks.map(x=>corners.map(c=>`unless block ~${c[0]} ~-0.1 ~${c[1]} ${x}`).join(' ')).join(' ')} run tag @s add parkour-offtrail`,
      `execute as @a[tag=parkour-offtrail] at @s ${[0,1].map(x=>corners.map(c=>`unless block ~${c[0]} ~${x} ~${c[1]} void_air`).join(' ')).join(' ')} run tag @s remove parkour-offtrail`,
      `effect give @a[gamemode=adventure,tag=parkour-offtrail] slowness 1 255 true`,
      `effect give @a[gamemode=adventure,tag=parkour-offtrail] jump_boost 1 128 true`,
      `title @a[gamemode=adventure,tag=parkour-offtrail] actionbar {"text":"Please return to the trail!","color":"red"}`,
      `scoreboard players add @a[tag=parkour-offtrail] parkour-offtrail 1`,
      `scoreboard players reset @a[tag=!parkour-offtrail,nbt={OnGround:1b}] parkour-offtrail`,
      `execute as @e[gamemode=adventure,tag=parkour-offtrail,scores={parkour-offtrail=50..}] run function generated:story/parkour/respawn`
    ])

    genseq('parkour/start_seq', {
      cmds: [
        'schedule clear generated:story/sawyer/nighttime_seq-0',
        'time set 20000',
        'gamerule doDaylightCycle true'
      ],
      next: [
        {
          wait: 2000,
          seq: {
            cmds: [
              `gamerule doDaylightCycle false`,
              `time set 22000`
            ]
          }
        }
      ]
    })

    addfunc('parkour/fillshoechest', [
      `execute unless data block ~ ~ ~ Items[] run data merge block ~ ~ ~ {Items:[${toSnbt(Object.assign({Count:'1b', Slot:'13b'}, item.snowshoes))}]}`
    ])

    schedule(`execute if score #hurm-done vars matches 1 run give @a[nbt=!{Inventory:[{tag:{compass:1b}}]}] ${toGive(item.compass)}`, 20, functions)

    addfunc('parkour/setpuzzlecheckpoint', [
      `scoreboard players set @s checkpoint-id ${hash(checkpoints[checkpoints.length-1])}`
    ])
  })();

  (() => {
    const basementrange = "982 195 568 1003 210 587";
    const params: Record<string, Record<string, string[]>> = {
      "chest": {
        "facing": [
          "north",
          "south",
          "east",
          "west"
        ],
        "type": [
          "left",
          "right",
          "single"
        ]
      },
      // "barrel": {
      //   "facing": [
      //     "down",
      //     "east",
      //     "north",
      //     "south",
      //     "up",
      //     "west"
      //   ]
      // }
    }

    const tmpblock = `minecraft:smoker{Items:[{Count:1b,Slot:0b,id:"minecraft:stone",tag:{tmpblock:1b}}]}`;

    const iterateblocks = (type: string, i: number, value: string): string[] => {
      let vals: string[] = [];
      const entries = [...Object.entries(params[type])];
      if (i < entries.length) {
        for (let j of entries[i][1]) {
          vals = [...vals, ...iterateblocks(type, i+1, `${value},${entries[i][0]}=${j}`)];
        }
      } else {
        return [`minecraft:${type}[${value.slice(1)}]`];
      }

      return vals;
    };

    addfunc('tower/resetbasement', [
      ([] as string[]).concat(...Object.keys(params).map(k => iterateblocks(k, 0, ""))).map(s=>[
        `fill ${basementrange} ${tmpblock} replace ${s}`,
        `fill ${basementrange} ${s} replace ${tmpblock}`,
      ])
    ])

    const validspots = [
      '/setblock 983 207 584 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[]}',
      '/setblock 983 200 585 minecraft:chest[facing=east,type=single,waterlogged=false]{Items:[]}',
      '/setblock 990 206 575 minecraft:chest[facing=west,type=left,waterlogged=false]{Items:[]}',
      '/setblock 989 206 576 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[]}',
      '/setblock 988 204 572 minecraft:chest[facing=south,type=single,waterlogged=false]{Items:[]}',
      '/setblock 1000 202 584 minecraft:chest[facing=west,type=left,waterlogged=false]{Items:[]}',
      '/setblock 991 198 575 minecraft:chest[facing=east,type=single,waterlogged=false]{Items:[]}',
      '/setblock 994 203 583 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[]}',
      '/setblock 989 203 585 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[]}',
      '/setblock 985 206 585 minecraft:chest[facing=north,type=single,waterlogged=false]{Items:[]}',
      '/setblock 984 205 574 minecraft:chest[facing=south,type=right,waterlogged=false]{Items:[]}',
      '/setblock 993 206 569 minecraft:chest[facing=east,type=single,waterlogged=false]{Items:[]}',
      '/setblock 1000 204 570 minecraft:chest[facing=west,type=left,waterlogged=false]{Items:[]}',
      '/setblock 993 202 572 minecraft:chest[facing=east,type=single,waterlogged=false]{Items:[]}',
    ]

    addfunc('tower/placekey', [
      `scoreboard players set _rngm vars ${validspots.length}`,
      'function generated:rng/rng',
      validspots.map((x: string): string => x.match(/^\/setblock\s(\d+\s\d+\s\d+)\s.+$/)![1]!).map((x, i)=> `execute if score rng vars matches ${i} run data merge block ${x!} {Items:[${toSnbt(Object.assign({Count:'1b', Slot:'13b'}, item.boxkey))}]}`)
    ])

    const puzzles = {
      count: 4,
      colors: [
        "light_blue",
        "red",
        "yellow",
        "purple",
        "lime",
        "orange",
        "blue",
        "magenta",
        "white"
      ],
      startpos: [-2000, 50, 100],
      width: 19,
      filter: "#minecraft:mineable/pickaxe",
      roomcorner: "-2009 63 -9",
      roomchest: "-2000 65 -11",
      wirenbt: (c: string) => ({
        display: {
          Name: rawJson({
            text: `${c.split('_')
                     .map(w => w[0].toUpperCase() + w.substring(1).toLowerCase())
                     .join(' ')} Wire`,
            color: "white"
          }),
        },
        HideFlags: 127,
        wire: true
      })
    }

    for (const c of puzzles.colors) {
      files[`loot_tables/wires/${c}.json`] = JSON.stringify({
        type: "minecraft:block",
        pools: [
          {
            rolls: 1.0,
            bonus_rolls: 0.0,
            entries: [
              {
                type: "minecraft:item",
                name: `minecraft:${c}_wool`,
                functions: [{
                  function: "set_nbt",
                  tag: toSnbt(puzzles.wirenbt(c))
                }]
              }
            ]
          }
        ]
      })
    }

    addfunc('tower/puzzles/loadchunks', [
      `forceload add -2012 -12 -1988 12`,
      `forceload add ${puzzles.startpos[0]} ${puzzles.startpos[2]} ${puzzles.startpos[0] + puzzles.width*puzzles.count - 1} ${puzzles.startpos[2] + puzzles.width}`
    ])

    addfunc('tower/puzzles/init', [
      [...Array(puzzles.count)].map((x, i) => i).map(i=> [
        `summon marker ${puzzles.startpos[0] + (puzzles.width+1)*i} ${puzzles.startpos[1]} ${puzzles.startpos[2]} {Tags:["tower-puzzle", "tower-puzzle-init"]}`,
        `scoreboard players set @e[tag=tower-puzzle-init] tower-puzzle-id ${i}`,
        `execute as @e[tag=tower-puzzle-init] at @s run function generated:story/tower/puzzles/init_indiv`,
        `tag @e remove tower-puzzle-init`
      ])
    ])

    addfunc('tower/puzzles/init_indiv', [
      '#> Initiate an individual puzzle',
      'setblock ~ ~1 ~ air',
      'setblock ~ ~1 ~ chest',
      puzzles.colors.map(c=> [...Array(puzzles.width)].map((xx, x) => [...Array(puzzles.width)].map((yy, y) => 
        `execute if block ~${x} ~ ~${y} ${c}_wool run loot insert ~ ~1 ~ loot generated:wires/${c}`
      )))
    ])

    addfunc('tower/puzzles/loadpuzzle', [
      '#> load the puzzle with the id "loadid tower-puzzle-id"',
      '# Clear items',
      `clear @a #wool{wire:1b}`,
      `kill @e[type=item,nbt={Item:{tag:{wire:1b}}}]`,
      `gamerule doTileDrops true`,
      `setblock -1999 67 -10 air`,
      `setblock -1999 67 -10 stone_button[powered=false,facing=south]`,
      "execute as @e[tag=tower-puzzle] if score @s tower-puzzle-id = loadid tower-puzzle-id at @s run function generated:story/tower/puzzles/_loadpuzzle",
      `scoreboard players set interim tower-puzzle-id 0`
    ])

    addfunc('tower/puzzles/_loadpuzzle', [
      `execute positioned ${puzzles.roomcorner} run fill ~ ~ ~ ~${puzzles.width-1} ~ ~${puzzles.width-1} air`,
      `clone ~ ~ ~ ~${puzzles.width-1} ~ ~${puzzles.width-1} ${puzzles.roomcorner} filtered ${puzzles.filter}`,
      `data modify block ${puzzles.roomchest} Items set from block ~ ~1 ~ Items`
    ])

    genseq('tower/puzzles/nextpuzzle', {
      cmds: [
        `gamerule doTileDrops false`,
        `setblock -1999 67 -10 air`,
        `setblock -1999 67 -10 stone_button[powered=true,facing=south]`,
        `scoreboard players set interim tower-puzzle-id 1`
      ],
      next: [
        {
          wait: 20,
          seq: {
            cmds: [
              `playsound block.note_block.hat block @a -2000 67 -11 20 ${noteToPitch(8)}`,
            ],
            next: [
              {
                wait: 20,
                seq: {
                  cmds: [
                    `playsound block.note_block.hat block @a -2000 67 -11 20 ${noteToPitch(12)}`,
                  ],
                  next: [
                    {
                      wait: 20,
                      seq: {
                        cmds: [
                          `playsound block.note_block.hat block @a -2000 67 -11 20 ${noteToPitch(16)}`,
                        ],
                        next: [
                          {
                            wait: 40,
                            seq: {
                              cmds: [
                                "#> Check puzzle and advance if passed",
                                `execute as @e[tag=tower-puzzle] if score @s tower-puzzle-id = loadid tower-puzzle-id at @s run function generated:story/tower/puzzles/_nextpuzzle`,
                              ],
                              next: [
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

    addfunc('tower/puzzles/_nextpuzzle', [
      `execute if blocks ~ ~ ~ ~${puzzles.width-1} ~ ~${puzzles.width-1} ${puzzles.roomcorner} all run function generated:story/tower/puzzles/puzzlesuccess`,
      `execute unless blocks ~ ~ ~ ~${puzzles.width-1} ~ ~${puzzles.width-1} ${puzzles.roomcorner} all run function generated:story/tower/puzzles/puzzlefail`
    ])

    genseq('tower/puzzles/puzzlesuccess', {
      cmds: [
        `gamerule doTileDrops false`,
        `playsound entity.player.levelup block @a -2000 67 -11 20 0.8`,
        `particle dust 0 1 0 2 -1999.5 67.5 -9.5 0 0 0.15 0 5`,
      ],
      next: [
        {
          wait: 40,
          seq: {
            cmds: [
              `execute positioned ${puzzles.roomcorner} run fill ~ ~ ~ ~${puzzles.width-1} ~ ~${puzzles.width-1} barrier destroy`,
            ],
            next: [
              {
                wait: 40,
                seq: {
                  cmds: [
                    `scoreboard players add loadid tower-puzzle-id 1`,
                    `execute unless score loadid tower-puzzle-id matches ${puzzles.count}.. run function generated:story/tower/puzzles/loadpuzzle`,
                    `execute if score loadid tower-puzzle-id matches ${puzzles.count}.. run function hitchhike:story/tower/puzzles/end`
                  ],
                  next: [
                    
                  ]
                }
              }
            ]
          }
        }
      ]
    })

    addfunc('tower/puzzles/puzzlefail', [
      `scoreboard players set interim tower-puzzle-id 0`,
      `particle dust 1 0 0 2 -1999.5 67.5 -9.5 0 0 0.15 0 5`,
      `gamerule doTileDrops true`,
      `playsound minecraft:block.note_block.pling block @a -2000 67 -11 20`,
      `setblock -1999 67 -10 air`,
      `setblock -1999 67 -10 stone_button[powered=false,facing=south]`,
    ])

    addfunc('tower/puzzles/givecutter', [
      `give @s ${toGive(item.wirecutter, 1)}`
    ])

    addfunc('tower/puzzles/updatedroppedwire', [
      puzzles.colors.map(c=> `execute if entity @s[nbt={Item:{id:"minecraft:${c}_wool"}}] run data merge entity @s {Age:-32768s,Item:{tag:${toSnbt(Object.assign({CanPlaceOn:`["light_gray_concrete"]`}, puzzles.wirenbt(c)))}}}`)
    ])

    genseq('tower/activatetower', {
      cmds: [
        'forceload add 994 570 979 555',
        'scoreboard players set @e[tag=npc-solomon] dialogue-status -1'
      ],
      next: [
        {
          wait: 40,
          seq: {
            cmds: [
              'setblock 985 219 563 minecraft:redstone_block',
              'execute positioned 990 232 567 run function hitchhike:story/tower/endrod/2'
            ],
            next: [
              {
                wait: 15,
                seq: {
                  cmds: [
                    'execute positioned 982 234 563 run function hitchhike:story/tower/endrod/2'
                  ],
                  next: [
                    {
                      wait: 30,
                      seq: {
                        cmds: [
                          'setblock 988 241 560 minecraft:end_rod[facing=up]',
                          'setblock 988 235 560 minecraft:end_rod[facing=down]',
                          'playsound minecraft:block.conduit.activate block @a 988 238 560 2 0.8'
                        ],
                        next: [
                          {
                            wait: 15,
                            seq: {
                              cmds: [
                              ],
                              next: [
                                {
                                  wait: 30,
                                  seq: {
                                    cmds: [
                                      'setblock 985 220 563 minecraft:redstone_block',
                                      'execute positioned 978 251 567 run function hitchhike:story/tower/endrod/3'
                                    ],
                                    next: [
                                      {
                                        wait: 15,
                                        seq: {
                                          cmds: [
                                            'execute positioned 994 251 559 run function hitchhike:story/tower/endrod/3'
                                          ],
                                          next: [
                                            {
                                              wait: 15,
                                              seq: {
                                                cmds: [
                                                  'setblock 985 221 563 minecraft:redstone_block',
                                                  'execute positioned 978 251 559 run function hitchhike:story/tower/endrod/3'
                                                ],
                                                next: [
                                                  {
                                                    wait: 30,
                                                    seq: {
                                                      cmds: [
                                                        'execute positioned 994 251 567 run function hitchhike:story/tower/endrod/3'
                                                      ],
                                                      next: [
                                                        {
                                                          wait: 30,
                                                          seq: {
                                                            cmds: [
                                                              'setblock 985 222 563 minecraft:redstone_block',
                                                              'execute positioned 986 251 555 run function hitchhike:story/tower/endrod/3'
                                                            ],
                                                            next: [
                                                              {
                                                                wait: 15,
                                                                seq: {
                                                                  cmds: [
                                                                    'execute positioned 986 251 571 run function hitchhike:story/tower/endrod/3'
                                                                  ],
                                                                  next: [
                                                                    {
                                                                      wait: 45,
                                                                      seq: {
                                                                        cmds: [
                                                                          'setblock 986 255 563 minecraft:end_rod[facing=up]',
                                                                          'playsound minecraft:item.totem.use block @a 986 255 563 3 0.9'
                                                                        ],
                                                                        next: [
                                                                          {
                                                                            wait: 40,
                                                                            seq: {
                                                                              cmds: [
                                                                                'scoreboard players set #phone-enabled vars 1',
                                                                                'execute if entity @a[nbt={Inventory:[{tag:{phone:1b}}]}] run scoreboard players set @e[tag=npc-solomon] dialogue-status 2',
                                                                                'execute unless entity @a[nbt={Inventory:[{tag:{phone:1b}}]}] run scoreboard players set @e[tag=npc-solomon] dialogue-status 3'
                                                                              ],
                                                                              next: [
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
    addfunc('phone/handleholder', [
      'execute unless score @s phone-detect-id matches 0.. at @s run function generated:story/phone/addholder',
      'scoreboard players operation #tmp phone-detect-id = @s phone-detect-id',
      `execute at @s as @e[tag=phone-click-detect] if score @s phone-detect-id = #tmp phone-detect-id run function generated:story/phone/tpholder`
    ])

    addfunc('phone/addholder', [
      `summon armor_stand ~ ~0.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,Tags:["phone-click-detect","phone-click-detect-init"],DisabledSlots:4079422}`,
      `scoreboard players add -max phone-detect-id 1`,
      `scoreboard players operation @s phone-detect-id = -max phone-detect-id`,
      `scoreboard players operation @e[tag=phone-click-detect-init] phone-detect-id = -max phone-detect-id`,
      `team join collisionless @e[tag=phone-click-detect-init]`,
      `tag @e remove phone-click-detect-init`
    ])

    addfunc('phone/tpholder', [
      'tp @s ~ ~0.7 ~',
      'tag @s add phone-click-detect-enabled'
    ])

    addfunc('phone/takecall', [
      'scoreboard players operation #tmp phone-detect-id = @s phone-detect-id',
      'execute as @a if score @s phone-detect-id = #tmp phone-detect-id run tag @s add phone-detect-selected',
      `execute unless score android song-playing matches 1 unless score ios song-playing matches 1 if entity @s[nbt={HandItems:[{tag:{iosphone:1b}}]}] run tag @a[tag=phone-detect-selected] add song-ios`,
      `execute unless score android song-playing matches 1 unless score ios song-playing matches 1 if entity @s[nbt={HandItems:[{tag:{androidphone:1b}}]}] run tag @a[tag=phone-detect-selected] add song-android`,
      `execute if entity @s[nbt={HandItems:[{tag:{iosphone:1b}}]}] run give @a[tag=phone-detect-selected] ${toGive(item.iosphone)}`,
      `execute if entity @s[nbt={HandItems:[{tag:{androidphone:1b}}]}] run give @a[tag=phone-detect-selected] ${toGive(item.androidphone)}`,
      `data modify entity @s HandItems set value [{},{}]`,
      `execute unless score #phone-enabled vars matches 1 as @a[tag=phone-detect-selected] run function generated:story/phone/failedcall`,
      `execute if score #phone-enabled vars matches 1 unless score android song-playing matches 1 unless score ios song-playing matches 1 as @a[tag=phone-detect-selected] run function generated:story/phone/startcall`,
      'tag @a remove phone-detect-selected'
    ])

    addfunc('phone/startcall', [
      'scoreboard players set #phone-enabled vars -1',
      `execute if entity @a[tag=song-ios] run function generated:story/songs/ios`,
      `execute if entity @a[tag=song-android] run function generated:story/songs/android`,
      `schedule function generated:story/phone/call 230t`
    ])

    addfunc('phone/failedcall', [
      `execute if score #phone-enabled vars matches 0 run title @s actionbar {"text":"No Connection.","color":"#d4d1c3"}`,
      'execute unless score android song-playing matches 1 run tag @a remove song-android',
      'execute unless score ios song-playing matches 1 run tag @a remove song-ios'
    ])

    genseq('phone/call', {
      cmds: [
        `tag @a[tag=song-ios] add caller`,
        `tag @a[tag=song-android] add caller`,
        `tag @a remove song-ios`,
        `tag @a remove song-android`
      ],
      next: [
        {
          wait: 15,
          seq: {
            cmds: [
              `execute at @a[tag=caller] run playsound minecraft:block.wooden_door.open player @a ~ ~ ~ 0.8 1.6`,
              `execute at @a[tag=caller] run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 0.6 1.2`,
              `execute at @a[tag=caller] run playsound minecraft:block.piston.contract player @a ~ ~ ~ 0.2 1.3`
            ],
            next: [
              {
                wait: 10,
                seq: {
                  cmds: [
                    `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.5 1.5`,
                    `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.5 0.9`
                  ],
                  next: [
                    {
                      wait: 10,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.4 1.5`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.4 0.9`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 20,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.4 1.5`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.4 0.9`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 30,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.3 1.5`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.3 0.9`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 40,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.3 1.5`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.3 0.9`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 50,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.4 1.5`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.4 0.9`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 60,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.4 1.5`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.4 0.9`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 70,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.3 1.5`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.3 0.9`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 80,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.3 1.5`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.3 0.9`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 90,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.4 1.5`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.4 0.9`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 100,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.5 1.5`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.5 0.9`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 110,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.7 1.6`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 0.7 0.9`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 120,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 1 1.6`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 1 1`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 130,
                      seq: {
                        cmds: [
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 1.33 1.6`,
                          `execute at @a[tag=caller] run playsound minecraft:entity.guardian.attack player @a ~ ~ ~ 1.3 1`
                        ],
                        next: [
                        ]
                      }
                    },
                    {
                      wait: 50,
                      seq: {
                        cmds: [
                          `effect give @a minecraft:nausea 100 255 true`
                        ],
                        next: [
                          {
                            wait: 10,
                            seq: {
                              cmds: [
                                `tellraw @a {"text":"...hello?","color":"#c0d0d1","italic":true,"bold":true}`
                              ],
                              next: [
                                {
                                  wait: 80,
                                  seq: {
                                    cmds: [
                                      `tag @a remove caller`,
                                      `stopsound @a player`,
                                      `effect clear @a nausea`,
                                      `tp @a[tag=!admin] -196 64 -10 -90 0`,
                                      `playsound minecraft:entity.illusioner.mirror_move player @a -196 64 -10 1 1.1`
                                    ],
                                    next: [
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

    genseq('misc/lobby/opendoor', {
      cmds: [
        'scoreboard players set #credit-door vars 1',
        'playsound minecraft:block.piston.extend block @a -205.0 65 -1.5 1 0.7'
      ],
      next: [
        {
          wait: 30,
          seq: {
            cmds: [
              'playsound minecraft:block.piston.contract block @a -207 62 -2 1 0.8',
              'playsound minecraft:block.piston.contract block @a -206 62 -2 1 0.8',
              'playsound minecraft:block.piston.contract block @a -205 62 -2 1 0.8',
              'playsound minecraft:block.piston.contract block @a -204 62 -2 1 0.8',
              'playsound minecraft:block.stone.break block @a -207 64 -2 1 0.6',
              'playsound minecraft:block.stone.break block @a -206 64 -2 1 0.6',
              'playsound minecraft:block.stone.break block @a -205 64 -2 1 0.6',
              'playsound minecraft:block.stone.break block @a -204 64 -2 1 0.6',
              'execute positioned -148 64 -3 run clone ~ ~ ~ ~5 ~4 ~2 -208 64 -3'
            ],
            next: [
              {
                wait: 30,
                seq: {
                  cmds: [
                    'playsound minecraft:block.piston.contract block @a -207 62 -2 1 0.8',
                    'playsound minecraft:block.piston.contract block @a -206 62 -2 1 0.8',
                    'playsound minecraft:block.piston.contract block @a -205 62 -2 1 0.8',
                    'playsound minecraft:block.piston.contract block @a -204 62 -2 1 0.8',
                    'playsound minecraft:block.stone.break block @a -207 64 -2 1 0.6',
                    'playsound minecraft:block.stone.break block @a -206 64 -2 1 0.6',
                    'playsound minecraft:block.stone.break block @a -205 64 -2 1 0.6',
                    'playsound minecraft:block.stone.break block @a -204 64 -2 1 0.6',
                    'execute positioned -158 64 -3 run clone ~ ~ ~ ~5 ~4 ~2 -208 64 -3'
                  ],
                  next: [
                    {
                      wait: 30,
                      seq: {
                        cmds: [
                          'playsound minecraft:block.piston.contract block @a -207 62 -2 1 0.8',
                          'playsound minecraft:block.piston.contract block @a -206 62 -2 1 0.8',
                          'playsound minecraft:block.piston.contract block @a -205 62 -2 1 0.8',
                          'playsound minecraft:block.piston.contract block @a -204 62 -2 1 0.8',
                          'playsound minecraft:block.stone.break block @a -207 64 -2 1 0.6',
                          'playsound minecraft:block.stone.break block @a -206 64 -2 1 0.6',
                          'playsound minecraft:block.stone.break block @a -205 64 -2 1 0.6',
                          'playsound minecraft:block.stone.break block @a -204 64 -2 1 0.6',
                          'execute positioned -168 64 -3 run clone ~ ~ ~ ~5 ~4 ~2 -208 64 -3'
                        ],
                        next: [
                          {
                            wait: 30,
                            seq: {
                              cmds: [
                                'playsound minecraft:block.piston.contract block @a -207 62 -2 1 0.8',
                                'playsound minecraft:block.piston.contract block @a -206 62 -2 1 0.8',
                                'playsound minecraft:block.piston.contract block @a -205 62 -2 1 0.8',
                                'playsound minecraft:block.piston.contract block @a -204 62 -2 1 0.8',
                                'playsound minecraft:block.stone.break block @a -207 64 -2 1 0.6',
                                'playsound minecraft:block.stone.break block @a -206 64 -2 1 0.6',
                                'playsound minecraft:block.stone.break block @a -205 64 -2 1 0.6',
                                'playsound minecraft:block.stone.break block @a -204 64 -2 1 0.6',
                                'execute positioned -178 64 -3 run clone ~ ~ ~ ~5 ~4 ~2 -208 64 -3'
                              ],
                              next: [
                                {
                                  wait: 30,
                                  seq: {
                                    cmds: [
                                      'playsound minecraft:block.piston.contract block @a -207 62 -2 1 0.8',
                                      'playsound minecraft:block.piston.contract block @a -206 62 -2 1 0.8',
                                      'playsound minecraft:block.piston.contract block @a -205 62 -2 1 0.8',
                                      'playsound minecraft:block.piston.contract block @a -204 62 -2 1 0.8',
                                      'playsound minecraft:block.stone.break block @a -207 64 -2 1 0.6',
                                      'playsound minecraft:block.stone.break block @a -206 64 -2 1 0.6',
                                      'playsound minecraft:block.stone.break block @a -205 64 -2 1 0.6',
                                      'playsound minecraft:block.stone.break block @a -204 64 -2 1 0.6',
                                      'execute positioned -188 64 -3 run clone ~ ~ ~ ~5 ~4 ~2 -208 64 -3'
                                    ],
                                    next: [
                                      {
                                        wait: 40,
                                        seq: {
                                          cmds: [
                                            `title @a times 10 50 15`,
                                            `title @a title {"text":"Thank You for Playing!","color":"blue","bold":true}`,
                                            'playsound minecraft:ui.toast.challenge_complete block @a -205.00 65 0.5 1 1',
                                            'scoreboard players set #map-finished vars 1'
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

    const songs = {
      ios: {
        notes: [[
          [6, 18],
          [16],
          [13],
          [],
          [18],
          [],
          [4, 11],
          [],
          [18],
          [],
          [16],
          [],
          [18],
          [],
          [3, 11, 15],
          [],
          [],
          [],
          [],
          [],
          [],
          [9, 13],
          [],
          [],
          [],
          [6, 13],
          [],
          [9, 16],
          [],
          [11, 18],
          [],
          [6, 18],
          [16],
          [13],
          [],
          [18],
          [],
          [4, 11],
          [],
          [18],
          [],
          [16],
          [],
          [18],
          [],
          [3, 11, 15],
          [],
          [],
          [],
          [],
          [],
          [],
          [9, 13],
          [],
          [],
          [],
          [6, 13],
          [],
          [9, 16],
          [],
          [11, 18],
          [6, 18],
          [16],
          [13],
          [],
          [18],
          [],
          [4, 11],
          [],
          [18],
          [],
          [16],
          [],
          [18],
          [],
          [3, 11, 15],
          [],
          [],
          [],
          [],
          [],
          [],
          [9, 13],
          [],
          [],
          [],
          [6, 13],
          [],
          [9, 16],
          [],
          [11, 18],
          [],
          [6, 18],
          [16],
          [13],
          [],
          [18],
          [],
          [4, 11],
          [],
          [18],
          [],
          [16],
          [],
          [18],
          [],
          [3, 11, 15],
          [],
          [],
          [],
          [],
          [],
          [],
        ]],
        bpm: 140,
        denomination: 4,
        instrument: ["block.note_block.harp"],
        selector: 'at @a[tag=song-ios]'
      },
      android: {
        notes: [[
          [],
          [],
          [],
          [],
          [6],
          [],
          [],
          [],
          [6],
          [13],
          [18],
          [17],
          [],
          [],
          [13],
          [],
          [],
          [],
          [],
          [],
          [6],
          [],
          [],
          [],
          [6],
          [13],
          [18],
          [17],
          [],
          [],
          [13],
          [],
          [],
          [],
          [],
          [],
          [],
          [],
          [],
          [],
          [],
          [],
          [],
          [],
          [6],
          [],
          [],
          [],
          [6],
          [13],
          [18],
          [17],
          [],
          [],
          [13],
          [],
          [],
          [],
          [],
          [],
          [6],
          [],
          [],
          [],
          [6],
          [13],
          [18],
          [17],
          [],
          [],
          [13],
          [],
          [],
          [],
          [],
          [],
        ]],
        bpm: 120,
        denomination: 4,
        instrument: ["block.note_block.pling"],
        selector: 'at @a[tag=song-android]'
      },
      // dialtone: {
      //   notes: [
      //     [...Array(100)].map((x, i)=>(i % 20 < 15) ? [0, 4] : []),
      //     [...Array(100)].map((x, i)=>(i % 20 < 15) ? [12, 16] : [])
      //   ],
      //   bpm: 60,
      //   denomination: 20,
      //   instrument: ["block.lava.extinguish", "block.note_block.didgeridoo"],
      //   selector: 'at @a[tag=caller]'
      // }
    }

    Object.entries(songs).map(([name, songdata]: [string, any]) => {
      let delay = Math.round(60*20/songdata.bpm/songdata.denomination); // ticks between each denomination

      delay = (delay < 1) ? 1 : delay; // set minimum delay to 1 tick

      const song = [];

      for (let j = 0; j < songdata.notes.length; j++) {
        const noteseq = songdata.notes[j];
        for (let i = 0; i < noteseq.length; i++) {
          // console.log(songdata.notes, i)
          const chord: number[] = noteseq[i];
          if (chord.length === 0) continue;

          song.push({
            wait: delay * i,
            seq: {
              cmds: chord.map((x: number)=>`execute ${songdata.selector} run playsound ${songdata.instrument[j]} player @a ~ ~ ~ 1 ${noteToPitch(x)}`)
            }
          })
        }
      }

      song.push({
        wait: delay * Math.max(...songdata.notes.map((k: number[][])=>k.length)),
        seq: {
          cmds: [
            `scoreboard players set ${name} song-playing 0`
          ]
        }
      })

      addfunc(`songs/${name}`, [
        `scoreboard players add ${name} song-playing 0`,
        `execute if score ${name} song-playing matches 0 run function generated:story/songs/_${name}`
      ])

      genseq(`songs/_${name}`, {
        cmds: [
          `scoreboard players set ${name} song-playing 1`
        ],
        next: song
      })

    });
  })();

  (() => {
    const validblocks = [
      "gray_concrete", 
      "yellow_concrete", 
      "white_concrete", 
      "gray_concrete_powder", 
      "white_concrete_powder", 
      "deepslate", 
      "smooth_quartz", 
      "calcite", 
      "blue_concrete_powder", 
      "smooth_stone", 
      "stone_stairs", 
      "gravel", 
      "stone", 
      "cobblestone", 
      "andesite", 
      "cobbled_deepslate", 
      "stone_bricks", 
      "white_terracotta",
      "tuff",
      "dead_bubble_coral_block"
    ]

    const neighbors = [
      // [-1, -1],
      [-1, 0],
      // [-1, 1],
      [0, -1],
      [0, 1],
      // [1, -1],
      [1, 0],
      // [1, 1],
    ]

    addfunc('misc/car/handlecollision', [
      'scoreboard players set #tmpoffx car 0',
      'scoreboard players set #tmpoffz car 0',
      neighbors.map(n=>{
        const cond = `${n[0] == 0 ? ' ' : ` unless score @s car-velX matches ${n[0] < 0 ? "0.." : "..0"} `}${n[1] == 0 ? '' : `unless score @s car-velZ matches ${n[1] < 0 ? "0.." : "..0"} `}`;
        return [
          `scoreboard players set #tmp car 0`,
          [-0.49, 0.49].map(os=>[
            `execute${cond}positioned ~${n[0] === 0 ? os : n[0]} ~-1 ~${n[1] === 0 ? os : n[1]} ${validblocks.map(b=>`unless block ~ ~ ~ ${b}`).join(' ')} run scoreboard players set #tmp car 1`,
            `execute${cond}positioned ~${n[0] === 0 ? os : n[0]} ~ ~${n[1] === 0 ? os : n[1]} ${["air", "void_air", "cave_air", "#buttons", '#signs'].map(b=>`unless block ~ ~ ~ ${b}`).join(' ')} run scoreboard players set #tmp car 1`,
          ]),
          `${n[0] === 0 ? '# ' : ''}execute if score #tmp car matches 1 run scoreboard players set #tmpoffx car 1`,
          `${n[1] === 0 ? '# ' : ''}execute if score #tmp car matches 1 run scoreboard players set #tmpoffz car 1`
        ]
      }),
      `execute if score #tmpoffx car matches 1 run scoreboard players operation @s car-velX /= -2 const`,
      `execute if score #tmpoffz car matches 1 run scoreboard players operation @s car-velZ /= -2 const`
    ])

    addfunc('misc/car/addinitials', [
      [
      "911.0 64 -149.0",
      "909.0 64 -149.0",
      "907.0 64 -149.0",
      "905.0 64 -149.0",
      "903.0 64 -149.0",
      "901.0 64 -149.0"
      ].map(x=> `execute positioned ${x} run function hitchhike:car/summon`)
    ])

    // lobby handling

    schedule([
      `particle minecraft:end_rod -75.0 67 88.5 1 0.8 0.3 0 5`,
      `execute if entity @a[x=-77,y=65,z=88,dx=3,dy=2,dz=0] as @a[x=-127,y=64,z=-14,dx=103,dy=10,dz=103] run function hitchhike:story/intro/lobbytp`,
      `particle minecraft:end_rod -205.0 66 90.5 1 0.8 0.3 0 5`,
      `tp @a[x=-207,y=64,z=90,dx=3,dy=3,dz=0] -75.0 65 -5.0 180 0`,
      `execute if score #map-finished vars matches 1 run particle minecraft:end_rod -75.0 67 -12.5 1 0.8 0.3 0 5`,
      `execute if score #map-finished vars matches 1 run tp @a[x=-77,y=65,z=-13,dx=3,dy=3,dz=0] -196 64 -10 -90 0`
    ], 5, functions);

  })();
}