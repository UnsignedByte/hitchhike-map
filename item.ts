import { toSnbt, rawJson } from './compile-to-mcfunction.ts'

export const item = {
  quest_book: {
    id: '"minecraft:written_book"',
    Count: '1b',
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
  money:{
    1: {
      id: '"minecraft:nether_brick"',
      Count: '1b',
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
      Count: '1b',
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
      Count: '1b',
      tag: {
        display: {
          Name: rawJson({
            text: "1b",
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
      Count: '1b',
      tag: {
        display: {
          Name: rawJson({
            text: "1b",
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
      Count: '1b',
      tag: {
        display: {
          Name: rawJson({
            text: "1b",
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
      Count: '1b',
      tag: {
        display: {
          Name: rawJson({
            text: "1b",
            color: "#302829"
          }),
          Lore:`[${rawJson({
            text:"Worth 5.00 BOV"
          })}]`
        }
      }
    }
  }
}