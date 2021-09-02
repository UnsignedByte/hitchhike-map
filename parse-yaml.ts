import * as z from 'https://deno.land/x/zod@v3.5.1/mod.ts'
import * as YAML from 'https://deno.land/std@0.101.0/encoding/yaml.ts'

function tuple<T extends any[]>(...elements: T): T {
  return elements;
}

// return a ZOD type representation for a space separated tuple of n numbers
function nplet(n: number) {
  return z.string()
    .transform((x) => (tuple(...x.split(' ').map(Number).slice(0, n))))
}

const colourNameSchema = [
  z.literal('black'),
  z.literal('dark_blue'),
  z.literal('dark_green'),
  z.literal('dark_aqua'),
  z.literal('dark_red'),
  z.literal('dark_purple'),
  z.literal('gold'),
  z.literal('gray'),
  z.literal('dark_gray'),
  z.literal('blue'),
  z.literal('green'),
  z.literal('aqua'),
  z.literal('red'),
  z.literal('light_purple'),
  z.literal('yellow'),
  z.literal('white')
] as const
const colourNames = colourNameSchema.map(schema => schema.value)

const cmdSchema = z.object({ // allows custom commands
  command: z.array(z.string()).default([]),
  quest: z.array(z.string()).default([]),
  function: z.array(z.string()).default([]),
  score: z.array(z.string()).default([])
}).transform(x=>(
  {command:[
    ...x.score.map(s=>`scoreboard players set ${s}`),
    ...x.quest.map(q=>`function generated:quests/${q}-start`),
    ...x.function.map(f=>`function ${f}`),
    ...x.command
  ]}
)).default({command:[]})

const colourSchema = 
  z.union([
    z
      .number()
      .transform(hex => `#${hex.toString(16).padStart(6, '0')}`),
    ...colourNameSchema
  ])

const rawJSONTextSchema = 
  z.object({
    text: z.string(),
    selector: z.string(),
    color: colourSchema,
    bold: z.boolean(),
    italic: z.boolean(),
    underlined: z.boolean(),
    strikethrough: z.boolean(),
    obfuscated: z.boolean()
  })
  .deepPartial()

const msgSchema = z
  .object({
    global: z.boolean().default(false),
    message: z.union([
      z.string().transform(msg=>[{text: msg}]),
      rawJSONTextSchema.transform(json=>[json]),
      z.array(rawJSONTextSchema)
    ])
  }).and(cmdSchema)

const dialogueSchema = z
  .object({
    type: z.literal('simple').optional(), // default to simple
    end: z.union([
      z.number().transform(x=>({command: [`scoreboard players set \${select.self} dialogue-status ${x}`]})),
      cmdSchema
    ]),
    cond: z.number().default(0), // scoreboard condition under which to run
    messages: z.array(z.union([
      msgSchema,
      z.string().transform(msg=>msgSchema.parse({message: msg})),
    ])) // list of sequential messages to present, along with some parameters (I.E. globality)
  })

const npcSchema = z
  .object({
    name: z.string(),
    colour: colourSchema,
    position: nplet(3),
    rotation: nplet(2),
    head: z.string(),
    villager: z.object({
      type: z.union([
        z.literal('desert'),
        z.literal('jungle'),
        z.literal('plains'),
        z.literal('savanna'),
        z.literal('snow'),
        z.literal('swamp'),
        z.literal('taiga')
      ]),
      profession: z.union([
        z.literal('armorer'),
        z.literal('butcher'),
        z.literal('cartographer'),
        z.literal('cleric'),
        z.literal('farmer'),
        z.literal('fisherman'),
        z.literal('fletcher'),
        z.literal('leatherworker'),
        z.literal('librarian'),
        z.literal('nitwit'),
        z.literal('none'),
        z.literal('mason'),
        z.literal('shepherd'),
        z.literal('toolsmith'),
        z.literal('weaponsmith')
      ]),
      level: z.union([
        z.literal(1),
        z.literal(2),
        z.literal(3),
        z.literal(4),
        z.literal(5),
        z.literal(99)
      ])
    }),
    dialogue: z.array(
      z.union([
        dialogueSchema,
        z.string().transform((msg) => dialogueSchema.parse({messages:[msg]}))
      ])
    )
  })
  .strict()
  .deepPartial()

export type Npc = z.infer<typeof npcSchema>

type qci = 
{
  type: "player",
  stat?: string,
  condition?: string[],
  value?: string[],
  count?: number,
  overflow?: boolean,
  all?: boolean
} | {
  type: "nest",
  value: qci[],
  count?: number,
  overflow?: boolean
}

const questConditionSchema: z.ZodSchema<qci> = z.lazy(()=>z.union([
  z.object({
    type: z.literal('player'),
    stat: z.string().default('dummy'),
    condition: z.array(z.string()).default([]),
    value: z.array(z.string()).default([]),
    count: z.number().int().default(1),
    all: z.boolean().default(false)
  }),
  z.object({
    type: z.literal('nest'),
    value: z.array(questConditionSchema),
    count: z.number().int().default(-1)
  }).transform(x=>{
    if (x.count == -1) x.count = x.value.length;
    return x;
  })
]).and(z.object({
  overflow: z.boolean().default(false)
})))

export type QuestCondition = z.infer<typeof questConditionSchema>; // i hate this

const questSchema = z.
  object({
    name: z.string(),
    description: z.string(),
    hint: z.string().optional(),
    condition: questConditionSchema,
    end: cmdSchema
  })
  .strict()

export type Quest = z.infer<typeof questSchema>

const itemphysicsSchema = z.object({
  duration: z.number().default(10), // duration in seconds for simulation
  count: z.number().default(10), // number of items
  item: z.string(), // item ID
  corner: nplet(3),
  slope: nplet(3).default("0 0 0").transform(x=>x.map(v=>v*Math.PI/180)),
  bounds: nplet(2),
  small: z.boolean().default(false),
  walls: z.boolean().default(true),
  ground: z.array(z.string().transform(x=>x.split(" ").map(Number))),
  spawnrange: nplet(4).default("0 0 0 0"),
  type: z.union([
    z.literal('head'),
    z.literal('hand')
  ]).default('head')
})

export type ItemPhysics = z.infer<typeof itemphysicsSchema>

const fullSchema = z
  .object({
    npc:z.object({
      params:z.object({
        facing_res: z.number().default(3)
      }),
      npcs:z.record(npcSchema)
    }),
    quest: z.record(questSchema),
    itemphysics: z.array(itemphysicsSchema)
  })

export function parse (yaml: string): z.infer<typeof fullSchema> {
  // console.log(fullSchema.parse(YAML.parse(yaml)))
  return fullSchema.parse(YAML.parse(yaml))
}