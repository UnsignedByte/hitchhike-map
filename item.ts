import { toSnbt, rawJson, toCost } from './compile-to-mcfunction.ts'
import { npcSchema } from './parse-yaml.ts'
import { ensureDir, emptyDir } from 'https://deno.land/std@0.102.0/fs/mod.ts'
import { join, dirname } from 'https://deno.land/std@0.102.0/path/mod.ts'

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
  housekey: {
    id:'"minecraft:tripwire_hook"',
    tag:{
      Enchantments:`[{}]`,
      display:{
        Lore:`['{"text":"Unlocks Doors","color":"dark_gray"}']`,
        Name:`'{"text":"House Key","color":"dark_aqua","bold":true}'`
      }
    }
  },
  spyglass: {
    id: '"minecraft:spyglass"',
    tag: {
      display: {
        Name: rawJson({
          text: "Spyglass",
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
      },
      Enchantments:`[{}]`
    }
  },
  sdcardcorrupted: {
    id: '"minecraft:daylight_detector"',
    tag: {
      display: {
        Name: rawJson({
          text: "SD Card (Corrupted)",
          color: "#d6679f",
          bold: true
        }),
        Lore: `[${rawJson({
          text: "A corrupted SD Card",
          color: "blue"
        })}, ${rawJson({
          text: "What secrets might",
          color: "gray"
        })}, ${rawJson({
          text: "it hold inside?",
          color: "gray"
        })}]`
      },
      Enchantments:`[{}]`
    }
  },
  sdcardfixed: {
    id: '"minecraft:daylight_detector"',
    tag: {
      display: {
        Name: rawJson({
          text: "SD Card (Fixed)",
          color: "#d6679f",
          bold: true
        }),
        Lore: `[${rawJson({
          text: "An SD Card.",
          color: "blue"
        })}]`
      },
      Enchantments:`[{}]`
    }
  },
  map: {
    id: '"minecraft:filled_map"',
    tag: {
      display: {
        Name: rawJson({
          text: "Mountain Trail Map",
          color: "#25cc8c",
          bold: true
        }),
        Lore: `[${rawJson({
          text: "A Map.",
          color: "gray"
        })}]`
      },
      Enchantments:`[{}]`
    }
  },
  btc: {
    id: '"minecraft:sunflower"',
    tag: {
      display: {
        Name: rawJson({
          text: "1 BTC",
          color: "gold"
        }),
        Lore:`[${rawJson({
          text:"Valued at 1.00 BOV"
        })}]`
      }
    }
  },
  mouse: {
    id: '"minecraft:stone_button"',
    tag: {
      display: {
        Name: rawJson({
          text: "Logitech® M585 Multi-Device Wireless Mouse with Flow Tech",
          color: "light_gray"
        }),
        Lore:`[${rawJson({
          text:"Compact mouse with extra controls",
          color: "gray"
        })}]`
      }
    }
  },
  money:{
    1: {
      id: '"minecraft:nether_brick"',
      tag: {
        ismoney: true,
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
        ismoney: true,
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
        ismoney: true,
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
        ismoney: true,
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
        ismoney: true,
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
        ismoney: true,
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
    const items: Record<string, Record<string, any>> = {
      safeway: {
        apple: {
          id: '"minecraft:apple"',
          tag: {
            cost: 199,
            pos: `'905.5 64 -152.5'`,
            display: {
              Name: `${rawJson({
                text: "Fuji Apple",
                color: "#FF0000"
              })}`,
              Lore:`[${rawJson({
                text: `A Juicy Fuji Apple`,
                italic: true,
                color: "red"
              })}]`
            }
          }
        },
        melon_slice: {
          id: '"minecraft:melon_slice"',
          tag:{
            cost: 249,
            pos: `'909.5 64 -152.5'`,
            display: {
              Name: `${rawJson({
                text: "Watermelon",
                color: "#cc3968"
              })}`,
              Lore:`[${rawJson({
                text: `Ingredients:`,
                bold: true,
                underlined: true,
                italic: false,
                color: "gray"
              })},${rawJson({
                text: `Powdered Melon`,
                color: "dark_gray"
              })},${rawJson({
                text: `Water`,
                color: "dark_gray"
              })}]`
            }
          }
        },
        glow_berries: {
          id: '"minecraft:glow_berries"',
          tag:{
            cost: 149,
            pos: `'901.5 64 -152.5'`,
            display: {
              Name: `${rawJson({
                text: "Rainier Cherry",
                color: "#f2b91d"
              })}`,
              Lore:`[${rawJson({
                text: `Fresh from ?????`,
                italic: true,
                color: "gold"
              })}]`
            }
          }
        },
        milk: {
          id: '"minecraft:milk_bucket"',
          tag:{
            cost: 599,
            pos: `'914 62.75 -152.5'`,
            display: {
              Name: `${rawJson({
                text: "Whole Milk",
                bold: false,
                color: "#f5f3e6"
              })}`,
              Lore:`[${rawJson({
                text: `Got Milk?`,
                italic: true,
                color: "aqua"
              })}, ${rawJson({
                text: `Homogenized.`,
                italic: true,
                color: "gray"
              })}]`
            }
          }
        },
        egg: {
          id: '"minecraft:egg"',
          tag:{
            cost: 9,
            pos: `'914 63.625 -152.5'`,
            display: {
              Name: `${rawJson({
                text: "Egg",
                bold: false,
                color: "#f2e1aa"
              })}`,
              Lore:`[${rawJson({
                text: `A Dollar a Dozen`,
                italic: true,
                color: "#d9ac59"
              })}]`
            }
          }
        },
        pickle: {
          id: '"minecraft:sea_pickle"',
          tag:{
            cost: 99,
            pos: `'914 64.5 -152.5'`,
            display: {
              Name: `${rawJson({
                text: "Dill Pickle",
                bold: false,
                color: "#538c19"
              })}`,
              Lore:`[${rawJson({
                text: `pickle.dumps(obj)`,
                italic: true,
                color: "dark_green"
              })}]`
            }
          }
        },
        bamboo: {
          id: '"minecraft:bamboo"',
          tag:{
            cost: 119,
            pos: `'915.5 62.75 -153.5'`,
            display: {
              Name: `${rawJson({
                text: "Bamboo Shoots",
                bold: false,
                color: "#16ba2c"
              })}`,
              Lore:`[${rawJson({
                text: `Rich in fiber.`,
                italic: true,
                color: "#0d8c1e"
              })}]`
            }
          }
        },
        kelp: {
          id: '"minecraft:kelp"',
          tag:{
            cost: 119,
            pos: `'915.5 63.625 -153.5'`,
            display: {
              Name: `${rawJson({
                text: "Seaweed",
                bold: false,
                color: "#3bbd17"
              })}`,
              Lore:`[${rawJson({
                text: `Fresh and Undried`,
                italic: true,
                color: "#2fa315"
              })}]`
            }
          }
        },
        cane: {
          id: '"minecraft:sugar_cane"',
          tag:{
            cost: 89,
            pos: `'915.5 64.5 -153.5'`,
            display: {
              Name: `${rawJson({
                text: "Sugarcane",
                bold: false,
                color: "#009903"
              })}`,
              Lore:`[${rawJson({
                text: `Not candy,`,
                italic: true,
                color: "#d1261d"
              })}, ${rawJson({
                text: `sadly.`,
                italic: true,
                color: "#d1261d"
              })}]`
            }
          }
        },
        mysteryshrooms: {
          id: '"minecraft:red_mushroom"',
          tag:{
            cost: 349,
            pos: `'915.5 62.75 -156.5'`,
            display: {
              Name: `${rawJson({
                text: "Mystery Shrooms",
                bold: false,
                color: "#e64037"
              })}`,
              Lore:`[${rawJson({
                text: `No Toads were harmed`,
                italic: true,
                color: "#f25e70"
              })},${rawJson({
                text: `in the making of`,
                italic: true,
                color: "#f25e70"
              })},${rawJson({
                text: `this shroom (probably).`,
                italic: true,
                color: "#f25e70"
              })}]`
            }
          }
        },
        shiitake: {
          id: '"minecraft:brown_mushroom"',
          tag:{
            cost: 174,
            pos: `'915.5 63.625 -156.5'`,
            display: {
              Name: `${rawJson({
                text: "Shiitake Mushrooms",
                bold: false,
                color: "#917250"
              })}`,
              Lore:`[${rawJson({
                text: `Tasty`,
                italic: true,
                color: "#826246"
              })}]`
            }
          }
        },
        beet: {
          id: '"minecraft:beetroot"',
          tag:{
            cost: 149,
            pos: `'915.5 64.5 -156.5'`,
            display: {
              Name: `${rawJson({
                text: "Beet",
                bold: false,
                color: "#7a1f3d"
              })}`,
              Lore:`[${rawJson({
                text: `Beet red`,
                italic: true,
                color: "#6c1b36"
              })}, ${rawJson({
                text: `:flushed:`,
                italic: true,
                color: "#6c1b36"
              })}]`
            }
          }
        },
        potato: {
          id: '"minecraft:potato"',
          tag:{
            cost: 124,
            pos: `'915.5 63.625 -159.5'`,
            display: {
              Name: `${rawJson({
                text: "Potato",
                bold: false,
                color: "#dbbb70"
              })}`,
              Lore:`[${rawJson({
                text: `Unbaked and Unabashed`,
                italic: true,
                color: "#a67429"
              })}]`
            }
          }
        },
        carrot: {
          id: '"minecraft:carrot"',
          tag:{
            cost: 124,
            pos: `'915.5 63.625 -162'`,
            display: {
              Name: `${rawJson({
                text: "Carrot",
                bold: false,
                color: "#e6671e"
              })}`,
              Lore:`[${rawJson({
                text: `Recommended by`,
                italic: true,
                color: "#e36f17"
              })}, ${rawJson({
                text: `Pastor Ssempa`,
                italic: true,
                color: "#e36f17"
              })}]`
            }
          }
        },
        berries: {
          id: '"minecraft:sweet_berries"',
          tag:{
            cost: 249,
            pos: `'915.5 64.5 -160.5'`,
            display: {
              Name: `${rawJson({
                text: "Strawberry",
                bold: false,
                color: "#db324f"
              })}`,
              Lore:`[${rawJson({
                text: `Berry Delicious™`,
                italic: true,
                color: "#d43d7c"
              })}]`
            }
          }
        },
        rawbeef: {
          id: '"minecraft:beef"',
          tag:{
            cost: 899,
            pos: `'915.5 63.25 -165.25'`,
            display: {
              Name: `${rawJson({
                text: "Raw Beef",
                bold: false,
                color: "#a8180d"
              })}`,
              Lore:`[${rawJson({
                text: `Basically Rare`,
                italic: true,
                color: "blue"
              })}, ${rawJson({
                text: `Steak...`,
                italic: true,
                color: "blue"
              })}]`
            }
          }
        },
        rawmutton: {
          id: '"minecraft:mutton"',
          tag:{
            cost: 699,
            pos: `'915.5 64.5 -165.25'`,
            display: {
              Name: `${rawJson({
                text: "Mutton",
                bold: false,
                color: "#a30b2c"
              })}`,
              Lore:`[${rawJson({
                text: `Wool not included.`,
                italic: true,
                color: "blue"
              })}]`
            }
          }
        },
        porkchop: {
          id: '"minecraft:porkchop"',
          tag:{
            cost: 799,
            pos: `'914.25 63.25 -166.5'`,
            display: {
              Name: `${rawJson({
                text: "Porkchops",
                bold: false,
                color: "#e36d6d"
              })}`,
              Lore:`[${rawJson({
                text: `Only 1 Peppa Pig was`,
                italic: true,
                color: "blue"
              })}, ${rawJson({
                text: `harmed in its creation.`,
                italic: true,
                color: "blue"
              })}]`
            }
          }
        },
        rabbit: {
          id: '"minecraft:rabbit"',
          tag:{
            cost: 749,
            pos: `'914.25 64.5 -166.5'`,
            display: {
              Name: `${rawJson({
                text: "Rabbit Meat",
                bold: false,
                color: "#d1816b"
              })}`,
              Lore:`[${rawJson({
                text: `Where's`,
                italic: true,
                color: "blue"
              })}, ${rawJson({
                text: `Big Chungus??`,
                italic: true,
                color: "blue"
              })}]`
            }
          }
        },
        chicken: {
          id: '"minecraft:chicken"',
          tag:{
            cost: 599,
            pos: `'911.5 64.5 -166.5'`,
            display: {
              Name: `${rawJson({
                text: "Chicken",
                bold: false,
                color: "#e3aa81"
              })}`,
              Lore:`[${rawJson({
                text: `Kentucky Unfried`,
                italic: true,
                color: "blue"
              })}]`
            }
          }
        },
        pufferfish: {
          id: '"minecraft:pufferfish"',
          tag:{
            cost: 999,
            pos: `'907.0 64 -166.3'`,
            display: {
              Name: `${rawJson({
                text: "Pufferfish",
                bold: false,
                color: "#f0e143"
              })}`,
              Lore:`[${rawJson({
                text: `Food for`,
                italic: false,
                color: "#e4ed2d"
              })}, ${rawJson({
                text: `Masochists`,
                italic: false,
                color: "#e4ed2d"
              })}]`
            }
          }
        },
        clownfish: {
          id: '"minecraft:tropical_fish"',
          tag:{
            cost: 1299,
            pos: `'902.5 64 -166.3'`,
            display: {
              Name: `${rawJson({
                text: "Clownfish",
                bold: false,
                color: "#ed8c37"
              })}`,
              Lore:`[${rawJson({
                text: `Here Lies`,
                italic: false,
                color: "#ffc59e"
              })}, ${rawJson({
                text: `Nemo (2003-2003)`,
                italic: false,
                color: "#ffc59e"
              })}, ${rawJson({
                text: `Rest in Peace.`,
                italic: false,
                color: "#ffc59e"
              })}]`
            }
          }
        },
        salmon: {
          id: '"minecraft:salmon"',
          tag:{
            cost: 1499,
            pos: `'898.0 64 -166.3'`,
            display: {
              Name: `${rawJson({
                text: "Fresh Salmon",
                bold: false,
                color: "#FFC3B5"
              })}`,
              Lore:`[${rawJson({
                text: `Watch out for`,
                italic: false,
                color: "#FA8072"
              })}, ${rawJson({
                text: `samonella...`,
                italic: false,
                color: "#FA8072"
              })}]`
            }
          }
        },
        monster: {
          id:'"minecraft:potion"',
          tag:{
            cost: 799,
            pos: `'899.7 63.25 -160.75'`,
            display:{
              Name:`'{"text":"Monster Energy","color":"green","bold":true}'`,
              Lore:`['{"text":"The energy drink for","color":"dark_green","bold":false}','{"text":"the perfect League","color":"dark_green"}','{"text":"of Legends player.","color":"dark_green"}']`
            },
            HideFlags:127,
            CustomPotionEffects:`[${toSnbt(
              {Id:'1b',Amplifier:'2b',Duration:100})}, ${toSnbt(
              {Id:'3b',Amplifier:'1b',Duration:600})}, ${toSnbt(
              {Id:'9b',Amplifier:'0b',Duration:200})}, ${toSnbt(
              {Id:'15b',Amplifier:'0b',Duration:20})}, ${toSnbt(
              {Id:'16b',Amplifier:'0b',Duration:400})}, ${toSnbt(
              {Id:'17b',Amplifier:'100b',Duration:80})}]`,
            Potion:`"minecraft:thick"`,
            CustomPotionColor:846663
          }
        },
        lacroix: {
          id:'"minecraft:potion"',
          tag:{
            cost: 999,
            pos: `'899.7 64.75 -160.75'`,
            display:{
              Name:`'{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}'`,
              Lore:`['{"text":"Water for people","color":"aqua","italic":false}','{"text":"who hate money","color":"aqua"}','{"text":"(and water).","color":"aqua"}']`
            },
            HideFlags:127,
            CustomPotionEffects:`[${toSnbt(
              {Id:'2b',Amplifier:'0b',Duration:200})}, ${toSnbt(
              {Id:'4b',Amplifier:'1b',Duration:400})}, ${toSnbt(
              {Id:'15b',Amplifier:'0b',Duration:20})}, ${toSnbt(
              {Id:'17b',Amplifier:'100b',Duration:80})}, ${toSnbt(
              {Id:'18b',Amplifier:'9b',Duration:1200})}, ${toSnbt(
              {Id:'28b',Amplifier:'0b',Duration:100})}]`,
            Potion:`"minecraft:awkward"`,
            CustomPotionColor:2799851
          }
        }
      },
      clothes: {
        pbblue: {
          id: '"minecraft:leather_boots"',
          tag: {
            cost: 2999,
            pos: ['986.74 64.5 -155.5', '986.74 64.5 -156.4', '986.74 64.5 -157.3', '986.74 64.5 -158.2'],
            rot: [-90,0],
            display: {
              Name: `${rawJson({
                text: "Plain Boots (Blue)",
                color: "gray"
              })}`,
              Lore:`[${rawJson({
                text: `Affordable and Fashionable.`,
                italic: true,
                color: "dark_gray"
              })}]`,
              color: 0x244B8F
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        pbbrown: {
          id: '"minecraft:leather_boots"',
          tag: {
            cost: 2999,
            pos: ['986.75 65.5 -155.5', '986.75 65.5 -156.4', '986.75 65.5 -157.3', '986.75 65.5 -158.2'],
            rot: [-90,0],
            display: {
              Name: `${rawJson({
                text: "Plain Boots (Brown)",
                color: "gray"
              })}`,
              Lore:`[${rawJson({
                text: `Affordable and Fashionable.`,
                italic: true,
                color: "dark_gray"
              })}]`,
              color: 0x755317
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        pbgray: {
          id: '"minecraft:leather_boots"',
          tag: {
            cost: 2999,
            pos: ['987.0 64.5 -159.26', '988.0 64.5 -159.26', '987.0 65.5 -159.25', '988.0 65.5 -159.25'],
            rot: [0,0],
            display: {
              Name: `${rawJson({
                text: "Plain Boots (Gray)",
                color: "gray"
              })}`,
              Lore:`[${rawJson({
                text: `Affordable and Fashionable.`,
                italic: true,
                color: "dark_gray"
              })}]`,
              color: 0x212121
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        hikingboots: {
          id: '"minecraft:leather_boots"',
          tag: {
            cost: 10999,
            pos: ['991.25 64.5 -156.5', '991.25 64.5 -157.5', '991.25 64.5 -158.5'],
            rot: [90,0],
            display: {
              Name: `${rawJson({
                text: "Leather Hiking Boots",
                color: "#9c6b14"
              })}`,
              Lore:`[${rawJson({
                text: `Built to last.`,
                italic: true,
                color: "dark_gray"
              })}]`,
              color: 0xc2a36b
            },
            Enchantments:`[{id:"minecraft:feather_falling",lvl:2s},{id:"minecraft:depth_strider",lvl:2s}]`,
            Unbreakable:true,
            HideFlags:127
          }
        },
        baseballcap: {
          id: '"minecraft:leather_helmet"',
          tag: {
            cost: 1199,
            pos: ['978.76 62.9 -155.5', '978.76 62.9 -156.5', '978.76 62.9 -157.5'],
            rot: [-90,23],
            display: {
              Name: `${rawJson({
                text: "Baseball Cap",
                color: "#c22b3c"
              })}`,
              Lore:`[${rawJson({
                text: `Cap.`,
                italic: true,
                color: "dark_gray"
              })}]`,
              color: 0x1139d9
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        hardhat: {
          id: '"minecraft:leather_helmet"',
          tag: {
            cost: 2799,
            pos: ['978.75 63.9 -155.5', '978.75 63.9 -156.5', '978.75 63.9 -157.5'],
            rot: [-90,23],
            display: {
              Name: `${rawJson({
                text: "Hardhat",
                color: "#f0c60c"
              })}`,
              Lore:`[${rawJson({
                text: `Protects against impacts.`,
                italic: true,
                color: "dark_gray"
              })}]`,
              color: 0xfff30f
            },
            Enchantments:`[{id:"minecraft:protection",lvl:1s}]`,
            Unbreakable:true,
            HideFlags:127
          }
        },
        bowlerhat: {
          id: '"minecraft:leather_helmet"',
          tag: {
            cost: 1199,
            pos: ['977.24 62.9 -155.5', '977.24 62.9 -156.5', '977.24 62.9 -157.5'],
            rot: [90,23],
            display: {
              Name: `${rawJson({
                text: "LEGO Dark Gray Knitted Cap (41334)",
                color: "#f06f0c"
              })}`,
              Lore:`[${rawJson([
                {
                  text: `For the `,
                  italic: true,
                  color: "#51534A"
                },
                {
                  text: `LEGO Prisoner 50380`,
                  // italic: true,
                  bold: true,
                  // color: '#51534A'
                }
              ])},${rawJson([
                {
                  text: `LEGO Prisoner 50380 in Medium Orange Uniform`,
                  italic: true,
                  bold: true,
                  color: "#51534A"
                },
                ` in you.`
              ])},]`,
              color: 0x51534A
            },
            Unbreakable:true,
            HideFlags:127
          }
        }
      }
    }

    let store: Record<string, any> = {
      unsold: {},
      sold: {},
      npc: {},
      commands: []
    }

    for (let sto of Object.keys(items)) {
      store.unsold[sto] = {};
      store.sold[sto] = {};
      for (let [k, v] of Object.entries(items[sto])) {
        v = <any> v;
        if (!('display' in v.tag)) {
          Object.assign(v.tag, {display:{Lore:`[]`}});
        }
        v.tag.store = `"${sto}"`

        store.unsold[sto][k] = JSON.parse(JSON.stringify(v));
        store.unsold[sto][k].tag.display.Lore = JSON.stringify(eval(`[...${store.unsold[sto][k].tag.display.Lore}, ${rawJson({text: ""})}, ${rawJson({
          text: `Unsold (${toCost(v.tag.cost)})`,
          italic: true,
          color: "dark_gray"
        })}]`))
        store.unsold[sto][k].tag.sold = false;
        delete store.unsold[sto][k].tag.pos;

        if (sto !== "clothes") {
          store.unsold[sto][k].id = '"minecraft:paper"';
        }

        store.sold[sto][k] = JSON.parse(JSON.stringify(v));
        store.sold[sto][k].tag.display.Lore = JSON.stringify(eval(`[...${store.sold[sto][k].tag.display.Lore}, ${rawJson({text: ""})}, ${rawJson({
          text: `Sold (${toCost(v.tag.cost)})`,
          italic: true,
          color: "dark_purple"
        })}]`))
        store.sold[sto][k].tag.sold = true;
        delete store.sold[sto][k].tag.pos;

        if (sto === "clothes") {
          let armor = `[{},{},{},{}]`
          let disabledslots = 4144959;
          switch (eval(v.id)) {
            case 'leather_boots': 
            case 'minecraft:leather_boots': 
              armor = `[${toSnbt(Object.assign({Count:'1b'}, store.unsold[sto][k]))},{},{},{}]`;
              disabledslots = 4013373;
              break;
            case "leather_leggings":
            case "minecraft:leather_leggings":
              armor = `[{},${toSnbt(Object.assign({Count:'1b'}, store.unsold[sto][k]))},{},{}]`;
              disabledslots = 3881787;
              break;
            case "leather_chestplate":
            case "minecraft:leather_chestplate":
              armor = `[{},{},${toSnbt(Object.assign({Count:'1b'}, store.unsold[sto][k]))},{}]`;
              disabledslots = 3618615;
              break;
            case "leather_helmet": 
            case "minecraft:leather_helmet": 
              armor = `[{},{},{},${toSnbt(Object.assign({Count:'1b'}, store.unsold[sto][k]))}]`;
              disabledslots = 3092271;
              break;
          }

          store.commands.push(v.tag.pos.map((x: string)=>
            `summon armor_stand ${x} {DisabledSlots:${disabledslots},NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["armorstand-clothes-display"],Pose:{Head:[${v.tag.rot[1]}F,0F,0F],LeftLeg:[0f,0f,355f],RightLeg:[0f,0f,5f]},Rotation:[${v.tag.rot[0]}F,0F],ArmorItems:${armor}}`
          ))
        } else {
          store.npc[`__${sto}_${k}`] = npcSchema.parse({
            name: rawJson([
              JSON.parse(eval((Object.assign({Name: `'"${k}"'`}, v.tag.display)).Name)),
              {
                text: ` (\${toCost(item.store.unsold.${sto}.${k}.tag.cost)})`,
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
                  `give \${select.player} \${toGive(item.store.unsold.${sto}.${k})}`
                ]
              }]
            }]
          })
        }
      }
    }

    return store;
  })(),
  books: await (async ()=> {
    let books = {
      1984: {
        author:"George Orwell",
        title: "1984"
      },
      c: {
        author:"GNU",
        title:"The GNU C Reference Manual"
      },
      scarletletter: {
        author: "Nathaniel Hawthorne",
        title:"The Scarlet Letter"
      },
      proposal: {
        author: "Jonathan Swift",
        title: "A Modest Proposal"
      },
      assembly: {
        author: "Wikipedia, the Free Encyclopedia",
        title: "x86 Assembly Language"
      },
      vim: {
        author: "GNU",
        title: "Vim Manual"
      },
      chess: {
        author: "José Raúl Capablanca",
        title: "Chess Fundamentals"
      },
      // bible: {
      //   title: "The King James Bible",
      //   author: "God"
      // },
      paradiselost: {
        title: "Paradise Lost",
        author: "John Milton"
      },
      tomsawyer: {
        title: "The Adventures of Tom Sawyer",
        author: "Mark Twain"
      },
      lorem: {
        title: "Lorem Ipsum...",
        author: "Filler Text"
      },
      bee: {
        title: "The Bee Movie",
        author: "DreamWorks Animation"
      }
    }

    ensureDir("./files");

    return Object.fromEntries(await Promise.all(Object.entries(books).map(async ([k, v]) => {
      let text = await Deno.readTextFile(`./files/${k}.txt`);

      console.log(`Loading ${k}...`)

      let pages: string[] = [];

      while (text.length > 0) {
        let max = 19*14; // 19 characters per line, 14 lines

        let page: any[] = [];

        while (text.length > 0) {
          let res = text.match(/^([^\s]+)([^\S\r\n]*|$)/g);

          if (res === null) {
            res = text.match(/([\r\n]+)\s*/);

            if (res === null) {
              // text = text.slice(1, text.length);
              break;
            }

            text = text.slice(res[0].length, text.length);

            for (let i = 0; i < res[1].length; i++) {
              page.push("\n");
              max = 19*Math.floor((max-1)/19);

              if (max <= 0) break;
            }

            continue;
          }

          if (max - res[0].length >= 0) {
            max -= res[0].length;
            text = text.slice(res[0].length, text.length);

            page.push(res[0]);
          } else {
            break;
          }
        }

        pages.push(JSON.stringify([{text: page.join("")}]));
      }

      return [k, {
        id: '"minecraft:written_book"',
        tag: {
          title: JSON.stringify(v.title),
          author: JSON.stringify(v.author),
          resolved: true,
          pages:JSON.stringify(pages)
        }
      }]
    })));
  })()
}