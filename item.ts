import { toSnbt, rawJson, toCost } from './compile-to-mcfunction.ts'

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
        tag:{
          cost: 200
        }
      },
      melon: {
        id: '"minecraft:melon_slice"',
        tag:{
          cost: 200
        }
      },
      berry: {
        id: '"minecraft:glow_berries"',
        tag:{
          cost: 200
        }
      }
    }

    let store: Record<string, Record<string, any>> = {
      unsold: {},
      sold: {}
    }

    for (let [k, v] of Object.entries(items)) {
      v = <any> v;
      store.unsold[k] = v;
      if (!('tag' in v)) {
        Object.assign(store.unsold[k], {tag:{display:{Lore:`[]`}}});
        Object.assign(v, {tag:{}});
      } else if (!('display' in v.tag)) {
        Object.assign(store.unsold[k].tag, {display:{Lore:`[]`}});
      }
      store.unsold[k].tag.display.Lore = `[${rawJson({
        text: `Unsold (${toCost(v.tag.cost)})`,
        italic: true,
        color: "dark_gray"
      })}]`
      store.unsold[k].tag.sold = false;
      store.sold[k] = v;
      store.sold[k].tag.sold = true;
    }

    return store;
  })()
}

console.log(item.store.unsold.apple.tag);