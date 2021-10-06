import { toSnbt, rawJson, toCost } from './compile-to-mcfunction.ts'
import { npcSchema } from './parse-yaml.ts'

export const item = {
  quest_book: {
    id: '"minecraft:written_book"',
    tag: {
      display: {
        Name: rawJson({
          text: "Quest Book",
          color: "light_purple"
        })
      },
      resolved: false,
      title: '"Quest Book"',
      author: '""',
      pages:`[${rawJson([
        {
          text: "Current Quests\n",
          color: "light_purple",
          underlined: true,
          bold: true
        },
        {
          nbt:"current[]",
          storage:"generated:quest_book",
          interpret:true,
          separator:"\n"
        }
      ])}, ${rawJson([
        {
          text: "Completed Quests\n",
          color: "light_purple",
          underlined: true,
          bold: true
        },
        {
          nbt:"completed[]",
          storage:"generated:quest_book",
          interpret:true,
          separator:"\n"
        }
      ])}]`
    }
  },
  spyglass: {
    id: '"minecraft:spyglass"',
    tag: {
      display: {
        Name: rawJson({
          text: "Cam's Spyglass",
          color: "gold",
          bold: true
        }),
        Lore: `[${rawJson({
          text: "Cameron's Spyglass",
          color: "blue"
        })}, ${rawJson({
          text: "Helps you spot",
          color: "gray"
        })}, ${rawJson({
          text: "faraway things.",
          color: "gray"
        })}]`
      }
    }
  },
  money:{
    1: {
      id: '"minecraft:nether_brick"',
      tag: {
        display: {
          Name: rawJson({
            text: "1b",
            color: "#3d1e24"
          }),
          Lore:`[${rawJson({
            text:"Worth 0.01 BOV"
          })}]`
        }
      }
    },
    5: {
      id: '"minecraft:brick"',
      tag: {
        display: {
          Name: rawJson({
            text: "5b",
            color: "#7d3d2b"
          }),
          Lore:`[${rawJson({
            text:"Worth 0.05 BOV"
          })}]`
        }
      }
    },
    10: {
      id: '"minecraft:copper_ingot"',
      tag: {
        display: {
          Name: rawJson({
            text: "10b",
            color: "#bf5935"
          }),
          Lore:`[${rawJson({
            text:"Worth 0.10 BOV"
          })}]`
        }
      }
    },
    25: {
      id: '"minecraft:gold_ingot"',
      tag: {
        display: {
          Name: rawJson({
            text: "25b",
            color: "#d99413"
          }),
          Lore:`[${rawJson({
            text:"Worth 0.25 BOV"
          })}]`
        }
      }
    },
    100: {
      id: '"minecraft:iron_ingot"',
      tag: {
        display: {
          Name: rawJson({
            text: "1B",
            color: "#717171"
          }),
          Lore:`[${rawJson({
            text:"Worth 1.00 BOV"
          })}]`
        }
      }
    },
    500: {
      id: '"minecraft:netherite_ingot"',
      tag: {
        display: {
          Name: rawJson({
            text: "5B",
            color: "#302829"
          }),
          Lore:`[${rawJson({
            text:"Worth 5.00 BOV"
          })}]`
        }
      }
    }
  },
  store: (() => {
    const items = {
      apple: {
        id: '"minecraft:apple"',
        tag: {
          cost: 200,
          pos: `'905.5 64 -152.5'`,
          display: {
            Lore:`[${rawJson({
              text: `A Juicy Red Apple\n`,
              italic: true,
              color: "red"
            })}]`
          }
        }
      },
      melon_slice: {
        id: '"minecraft:melon_slice"',
        tag:{
          cost: 200,
          pos: `'909.5 64 -152.5'`,
          display: {
            Lore:`[]`
          }
        }
      },
      glow_berries: {
        id: '"minecraft:glow_berries"',
        tag:{
          cost: 200,
          pos: `'901.5 64 -152.5'`,
          display: {
            Lore:`[]`
          }
        }
      },
      monster: {
        id:'"minecraft:potion"',
        tag:{
          cost: 500,
          pos: `'899.7 63.75 -160.5'`,
          display:{
            Name:`'{"text":"Monster Energy","color":"green","bold":true}'`,
            Lore:`['{"text":"The energy drink for","color":"dark_green","bold":false}','{"text":"the perfect League","color":"dark_green"}','{"text":"of Legends player.","color":"dark_green"}']`
          },
          HideFlags:127,
          CustomPotionEffects:`[${toSnbt(
            {Id:'3b',Amplifier:'1b',Duration:600})}, ${toSnbt(
            {Id:'9b',Amplifier:'0b',Duration:200})}, ${toSnbt(
            {Id:'15b',Amplifier:'0b',Duration:20})}, ${toSnbt(
            {Id:'16b',Amplifier:'0b',Duration:400})}]`,
          Potion:`"minecraft:thick"`,
          CustomPotionColor:846663
        }
      },
      lacroix: {
        id:'"minecraft:potion"',
        tag:{
          cost: 1000,
          pos: `'899.71 65.25 -160.5'`,
          display:{
            Name:`'{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}'`,
            Lore:`['{"text":"Water for people","color":"aqua","italic":false}','{"text":"who hate money","color":"aqua"}','{"text":"(and water).","color":"aqua"}']`
          },
          HideFlags:127,
          CustomPotionEffects:`[${toSnbt(
            {Id:'2b',Amplifier:'0b',Duration:200})}, ${toSnbt(
            {Id:'4b',Amplifier:'1b',Duration:400})}, ${toSnbt(
            {Id:'15b',Amplifier:'0b',Duration:20})}, ${toSnbt(
            {Id:'18b',Amplifier:'9b',Duration:1200})}]`,
          Potion:`"minecraft:awkward"`,
          CustomPotionColor:2799851
        }
      }
    }

    let store: Record<string, Record<string, any>> = {
      unsold: {},
      sold: {},
      npc: {}
    }

    for (let [k, v] of Object.entries(items)) {
      v = <any> v;
      if (!('display' in v.tag)) {
        Object.assign(v.tag, {display:{Lore:`[]`}});
      }
      store.unsold[k] = JSON.parse(JSON.stringify(v));
      store.unsold[k].tag.display.Lore = JSON.stringify(eval(`[...${store.unsold[k].tag.display.Lore}, ${rawJson({
        text: `Unsold (${toCost(v.tag.cost)})`,
        italic: true,
        color: "dark_gray"
      })}]`))
      store.unsold[k].tag.sold = false;

      store.sold[k] = JSON.parse(JSON.stringify(v));
      store.sold[k].tag.display.Lore = JSON.stringify(eval(`[...${store.sold[k].tag.display.Lore}, ${rawJson({
        text: `Sold (${toCost(v.tag.cost)})`,
        italic: true,
        color: "dark_purple"
      })}]`))
      store.sold[k].tag.sold = true;

      store.npc[k] = npcSchema.parse({
        name: rawJson([
          (Object.assign({Name: `"${k}"`}, v.tag.display)).Name,
          {
            text: `(\${toCost(item.store.unsold.${k}.tag.cost)})`,
            bold: false,
            italic: false,
            strikethrough: false,
            obfuscated: false,
            underlined: false
          }
        ]),
        invisible: true,
        colour: "null",
        position: eval(v.tag.pos),
        dialogue: [{
          messages: [{
            message: "taken",
            silent: true,
            command: [
              `give \${select.player} \${toGive(item.store.unsold.${k})}`
            ]
          }]
        }]
      })
    }

    return store;
  })()
}