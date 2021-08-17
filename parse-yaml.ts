import * as z from 'https://deno.land/x/zod@v3.5.1/mod.ts'
import * as YAML from 'https://deno.land/std@0.101.0/encoding/yaml.ts'

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
  })
  .strict()

const dialogueSchema = z
  .object({
    type: z.literal('simple').optional(), // default to simple
    end: z.number().optional(), // scoreboard value to update to after finish
    cond: z.number().default(0), // scoreboard condition under which to run
    messages: z.array(z.union([
      msgSchema,
      z.string().transform(msg=>msgSchema.parse({message: msg})),
    ])) // list of sequential messages to present, along with some parameters (I.E. globality)
  })
  .strict()

const npcSchema = z
  .object({
    name: z.string(),
    colour: colourSchema,
    position: z
      .string()
      .regex(
        /^-?\d+.?\d* -?\d+.?\d* -?\d+.?\d*$/i,
        'Positions must be a triplet of signed numbers.'
      )
      .transform((triplet): [number, number, number] => {
        const [x, y, z] = triplet.split(' ').map(Number)
        return [x, y, z]
      }),
    rotation: z
      .string().regex(
        /^-?\d+.?\d* -?\d+.?\d*/i,
        'Positions must be a pair of signed numbers.'
      )
      .transform((pair): [number, number] => {
        const [rx, ry] = pair.split(' ').map(Number)
        return [rx, ry]
      }),
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
  type: "stat",
  value: string,
  count?: number,
  all?: boolean
} | {
  type: "nest",
  value: qci[],
  count?: number,
  all?: boolean
}

const questConditionSchema: z.ZodSchema<qci> = z.lazy(()=>z.union([
  z.object({
    type: z.literal('stat'),
    value: z.string(),
    count: z.number().int().default(1),
    all: z.boolean().default(false)
  }),
  z.object({
    type: z.literal('nest'),
    value: z.array(questConditionSchema),
    count: z.number().int().default(1),
    all: z.boolean().default(false)
  })
]))

export type QuestCondition = z.infer<typeof questConditionSchema>; // i hate this

const questSchema = z.
  object({
    name: z.string(),
    description: z.string(),
    condition: questConditionSchema
  })
  .strict()

export type Quest = z.infer<typeof questSchema>

const fullSchema = z
  .object({
    npc:z.object({
      params:z.object({
        facing_res: z.number().default(3)
      }),
      npcs:z.record(npcSchema)
    }),
    quest: z.record(questSchema)
  })

export function parse (yaml: string): z.infer<typeof fullSchema> {
  return fullSchema.parse(YAML.parse(yaml))
}