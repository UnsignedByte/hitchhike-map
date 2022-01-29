import { hash } from './main.ts'
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
          color: "dark_blue",
          underlined: true,
          bold: true
        },
        {
          text: "(Hover for more info)\n",
          color: "gray",
          bold: false,
          underlined: false
        },
        {
          nbt:"current[]",
          storage:"generated:quest_book",
          interpret:true,
          separator:"\n"
        }
      ])}, ${rawJson([
        {
          text: "Completed Quests\n\n",
          color: "dark_blue",
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
  tvremote: {
    id:'"minecraft:light_gray_candle"',
    tag:{
      Enchantments:`[{}]`,
      display:{
        Lore:`['{"text":"Right click to play/pause.","color":"blue"}']`,
        Name:`'{"text":"TV Remote","color":"gray"}'`
      },
      tvremote: true
    }
  },
  ownphone: {
    id:'"minecraft:black_candle"',
    tag:{
      Enchantments:`[{}]`,
      display:{
        Lore:`['{"text":"Runs Android 5.0.2 \\\\"Lollipop\\\\".","color":"dark_gray"}']`,
        Name:`'{"text":"Motorola Moto G 2","color":"gray"}'`
      },
      phone: true,
      ownphone: true
    }
  },
  iosphone: {
    id:'"minecraft:black_candle"',
    tag:{
      Enchantments:`[{}]`,
      display:{
        Lore:`['{"text":"Only 13 nanometers thick.","color":"dark_gray"}']`,
        Name:`'{"text":"iPhone XXGS Pro Max Plus+ Ultra","color":"gray"}'`
      },
      phone: true,
      iosphone: true
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
      Enchantments:`[{}]`,
      map: 388
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
          text:"Valued at 1.00 BCK"
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
  snowshovel: {
    id: '"minecraft:iron_shovel"',
    tag: {
      display: {
        Name: rawJson({
          text: "Shovel",
          color: "gray"
        }),
        Lore:`[${rawJson({
          text:"Literally just a shovel.",
          color: "dark_gray"
        })}]`
      },
      sawyershovel: true,
      Unbreakable: true,
      HideFlags:127,
      // CanDestroy:`["minecraft:snow","minecraft:snow_block","minecraft:powder_snow"]`
    }
  },
  compass: {
    id: '"minecraft:compass"',
    tag: {
      display: {
        Name: rawJson({
          text: "Compass",
          color: "aqua"
        }),
        Lore:`[${rawJson([{
          text:"Points the way to your destination.",
          color: "dark_gray"
        }])}, ${rawJson([""])}, ${rawJson([{
          text:"Throw it on the ground to",
          color: "dark_gray"
        }])}, ${rawJson([{
          text:"restart from checkpoint.",
          color: "dark_gray"
        }])}]`
      },
      compass: true,
      HideFlags:127,
      LodestoneDimension:'"minecraft:overworld"',
      LodestoneTracked:false,
      LodestonePos: {
        X:986,
        Y:255,
        Z:563
      }
    }
  },
  snowshoes: {
    id: '"minecraft:iron_boots"',
    tag: {
      display: {
        Name: rawJson({
          text: "Snow Boots",
          color: "aqua",
          bold: true
        }),
        Lore:`[${rawJson([{
          text:"Required for",
          color: "gray"
        }])}, ${rawJson([{
          text:"mountaintop hikes.",
          color: "gray"
        }])}]`
      },
      Enchantments:`[{id:"minecraft:binding_curse",lvl:1s}]`,
      snowshoes: true,
      HideFlags:127
    }
  },
  boxkey: {
    id: '"minecraft:tripwire_hook"',
    tag: {
      display: {
        Name: rawJson({
          text: "Electrical Box Key",
          color: "aqua",
          bold: true
        }),
        Lore:`[${rawJson([{
          text:"Key to the",
          color: "gray"
        }])}, ${rawJson([{
          text:"tower's electrical box.",
          color: "gray"
        }])}]`
      },
      Enchantments:`[{}]`,
      boxkey: true,
      HideFlags:127
    }
  },
  wirecutter: {
    id: '"minecraft:shears"',
    tag: {
      display: {
        Name: rawJson({
          text: "Wirecutters",
          color: "gray",
          bold: true
        }),
        Lore:`[${rawJson([{
          text:"Cuts wires.",
          color: "dark_gray"
        }])}]`
      },
      Enchantments:`[{id:"efficiency",lvl:3s}]`,
      wirecutter: true,
      HideFlags:127,
      Unbreakable: true
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
            text:"Worth 0.01 BCK"
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
            text:"Worth 0.05 BCK"
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
            text:"Worth 0.10 BCK"
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
            text:"Worth 0.25 BCK"
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
            text:"Worth 1.00 BCK"
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
            text:"Worth 5.00 BCK"
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
                text: "Fresh Seaweed",
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
            },
            HideFlags:127
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
            },
            HideFlags:127
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
            },
            HideFlags:127
          }
        },
        ramen: {
          id: '"minecraft:mushroom_stew"',
          tag:{
            cost: 249,
            pos: `'912.3 63.5 -159.5'`,
            display: {
              Name: `${rawJson({
                text: "Instant Ramen",
                bold: false,
                color: "#b35425"
              })}`,
              Lore:`[${rawJson({
                text: `Just add hot water.`,
                italic: false,
                color: "dark_gray"
              })}]`
            },
            HideFlags:127
          }
        },
        cookie: {
          id: '"minecraft:cookie"',
          tag:{
            cost: 149,
            pos: `'909.7 63.5 -160.75'`,
            display: {
              Name: `${rawJson({
                text: "Chocolate-Chip Cookie",
                bold: false,
                color: "#916e3c"
              })}`,
              Lore:`[${rawJson({
                text: `Sugary goodness.`,
                italic: false,
                color: "dark_gray"
              })}]`
            },
            HideFlags:127
          }
        },
        honey: {
          id: '"minecraft:honey_bottle"',
          tag:{
            cost: 899,
            pos: `'909.8 64.3 -158.25'`,
            display: {
              Name: `${rawJson({
                text: "Honey",
                bold: false,
                color: "#e8c733"
              })}`,
              Lore:`[${rawJson({
                text: `Winnie the Pooh's`,
                italic: false,
                color: "#ebd93f"
              })}, ${rawJson({
                text: `favorite snack.`,
                italic: false,
                color: "#ebd93f"
              })}]`
            },
            HideFlags:127
          }
        },
        honeycomb: {
          id: '"minecraft:honeycomb"',
          tag:{
            cost: 749,
            pos: `'909.7 62.5 -158.25'`,
            display: {
              Name: `${rawJson({
                text: "Honeycomb",
                bold: false,
                color: "#ebce3f"
              })}`,
              Lore:`[${rawJson({
                text: `Hexagonal lattice.`,
                italic: false,
                color: "dark_gray"
              })}]`
            },
            HideFlags:127
          }
        },
        seaweed: {
          id: '"minecraft:dried_kelp"',
          tag:{
            cost: 199,
            pos: `'907.3 63.5 -159.5'`,
            display: {
              Name: `${rawJson({
                text: "Dried Seaweed",
                bold: false,
                color: "#19691c"
              })}`,
              Lore:`[${rawJson({
                text: `Crunchy.`,
                italic: false,
                color: "dark_gray"
              })}]`
            },
            HideFlags:127
          }
        },
        orangetulip: {
          id:'"minecraft:oxeye_daisy"',
          tag:{
            cost: 349,
            pos: `'904.75 64 -159.5'`,
            display: {
              Name: `${rawJson({
                text: "Oxeye Daisy",
                bold: false,
                color: "#cce6e6"
              })}`,
              Lore:`[${rawJson({
                text: `Fresh Flowers.`,
                italic: false,
                color: "dark_gray"
              })}]`
            },
            HideFlags:127
          }
        },
        orchid: {
          id:'"minecraft:blue_orchid"',
          tag:{
            cost: 349,
            pos: `'902.25 64 -159.5'`,
            display: {
              Name: `${rawJson({
                text: "Blue Orchid",
                bold: false,
                color: "#46c3cf"
              })}`,
              Lore:`[${rawJson({
                text: `Fresh Flowers.`,
                italic: false,
                color: "dark_gray"
              })}]`
            },
            HideFlags:127
          }
        },
        monster: {
          id:'"minecraft:potion"',
          tag:{
            cost: 799,
            pos: `'899.7 63.25 -160.75'`,
            display:{
              Name:`'{"text":"Monster Energy","color":"green"}'`,
              Lore:`['{"text":"The energy drink for","color":"dark_green","bold":false}','{"text":"the perfect League","color":"dark_green"}','{"text":"of Legends player.","color":"dark_green"}']`
            },
            HideFlags:127,
            CustomPotionEffects:`[${toSnbt(
              // {Id:'1b',Amplifier:'2b',Duration:100})}, ${toSnbt(
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
              Name:`'{"text":"La Croix Sparkling Water","color":"dark_aqua","italic":true}'`,
              Lore:`['{"text":"Water for people","color":"aqua","italic":false}','{"text":"who hate money","color":"aqua"}','{"text":"(and water).","color":"aqua"}']`
            },
            HideFlags:127,
            CustomPotionEffects:`[${toSnbt(
              {Id:'2b',Amplifier:'0b',Duration:200})}, ${toSnbt(
              {Id:'4b',Amplifier:'1b',Duration:400})}, ${toSnbt(
              {Id:'15b',Amplifier:'0b',Duration:20})}, ${toSnbt(
              {Id:'17b',Amplifier:'100b',Duration:80})}, ${toSnbt(
              // {Id:'28b',Amplifier:'9b',Duration:100})}, ${toSnbt(
              {Id:'18b',Amplifier:'9b',Duration:1200})}]`,
            Potion:`"minecraft:awkward"`,
            CustomPotionColor:2799851
          }
        },
        friedchicken: {
          id: '"minecraft:cooked_chicken"',
          tag: {
            cost: 749,
            pos: `'891.5 64 -158.7'`,
            display: {
              Name: `${rawJson({
                text: "Fried Chicken",
                bold: false,
                color: "#b55b00"
              })}`,
              Lore:`[${rawJson({
                text: `Straight from Kentucky.`,
                italic: false,
                color: "dark_gray"
              })}]`
            }
          }
        },
        ham: {
          id: '"minecraft:cooked_porkchop"',
          tag: {
            cost: 949,
            pos: `'891.5 64 -162.3'`,
            display: {
              Name: `${rawJson({
                text: "Ham",
                bold: false,
                color: "#b33d15"
              })}`,
              Lore:`[${rawJson({
                text: `Just steamed.`,
                italic: false,
                color: "dark_gray"
              })}]`
            }
          }
        },
        pie: {
          id: '"minecraft:pumpkin_pie"',
          tag: {
            cost: 899,
            pos: `'891 63.5 -165.7'`,
            display: {
              Name: `${rawJson({
                text: "Pumpkin Pie",
                bold: false,
                color: "#d66c0f"
              })}`,
              Lore:`[${rawJson({
                text: `Straight from the best winter squash.`,
                italic: false,
                color: "dark_gray"
              })}]`
            }
          }
        },
        bread: {
          id: '"minecraft:bread"',
          tag:{
            cost: 399,
            pos: `'883.3 63.5 -159.5'`,
            display: {
              Name: `${rawJson({
                text: "Whole Wheat Bread",
                bold: false,
                color: "#d1a96b"
              })}`,
              Lore:`[${rawJson({
                text: `Crunchy.`,
                italic: false,
                color: "#9c7d4c"
              })}]`
            }
          }
        },
        hashbrown: {
          id: '"minecraft:baked_potato"',
          tag: {
            cost: 499,
            pos: `'898 64 -152'`,
            display: {
              Name: `${rawJson({
                text: "Hash Brown",
                bold: false,
                color: "#bd7d2a"
              })}`,
              Lore:`[${rawJson({
                text: `Freshly Fried Potatoes.`,
                italic: false,
                color: "dark_gray"
              })}]`
            }
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
        knittedcap: {
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
                  text: `LEGO Prisoner 50380 in`,
                  // italic: true,
                  bold: true,
                  color: '#9EA2A2'
                }
              ])},${rawJson([
                {
                  text: `Medium Orange Uniform`,
                  italic: true,
                  bold: true,
                  color: "#9EA2A2"
                },
                {
                  text: ` in you.`,
                  bold: false,
                  color: "#51534A"
                },
              ])}]`,
              color: 0x51534A
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        fedora: {
          id: '"minecraft:leather_helmet"',
          tag: {
            cost: 4499,
            pos: ['977.25 63.9 -155.5', '977.25 63.9 -156.5', '977.25 63.9 -157.5'],
            rot: [90,23],
            display: {
              Name: `${rawJson({
                text: "Fedora",
                color: "dark_gray"
              })}`,
              Lore:`[${rawJson({
                  text: `You feel a transformation take place.`,
                  italic: true,
                  color: "dark_gray"
                })}]`,
              color: 0x16181a
            },
            AttributeModifiers:`[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:1,UUID:[I;630021950,-922727500,-2135475505,1782472473],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUID:[I;297611015,2008302109,-1966589247,1234231658],Slot:"head"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-0.5,Operation:1,UUID:[I;-273434090,384581840,-1583253411,1779552702],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-1729656826,-1288877937,-1530664844,1597331081],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:1,UUID:[I;1590296044,1048791058,-2051703317,1770680387],Slot:"head"}]`,
            Unbreakable:true,
            HideFlags:127
          }
        },
        tshirt: {
          id: '"minecraft:leather_chestplate"',
          tag: {
            cost: 1499,
            pos: ['978.5 64 -159.375', '978.5 64 -160.125', '978.5 64 -160.875', '978.5 64 -161.625'],
            rot: [-180,0],
            display: {
              Name: `${rawJson({
                text: "Plain White T-Shirt",
                color: "blue"
              })}`,
              Lore:`[${rawJson({
                  text: `Not really moist.`,
                  italic: true,
                  color: "dark_gray"
                })}]`,
              color: 0xFFFFFF
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        cmoose: {
          id: '"minecraft:leather_chestplate"',
          tag: {
            cost: 55000,
            pos: ['977.5 64 -159.375', '977.5 64 -160.125', '977.5 64 -160.875', '977.5 64 -161.625'],
            rot: [180,0],
            display: {
              Name: `${rawJson({
                text: "Canada Mousse Jacket",
                color: "red"
              })}`,
              Lore:`[${rawJson({
                  text: `Keeps you warm, at a price.`,
                  italic: true,
                  color: "dark_gray"
                })}]`,
              color: 0xb8ad82
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        brandedtshirt: {
          id: '"minecraft:leather_chestplate"',
          tag: {
            cost: 4999,
            pos: ['981.5 64 -159.375', '981.5 64 -160.125', '981.5 64 -160.875', '981.5 64 -161.625'],
            rot: [-180,0],
            display: {
              Name: `${rawJson({
                text: "Superior® Branded Tagless Tee",
                color: "#FF0000"
              })}`,
              Lore:`[${rawJson({
                  text: `Squint and you'll see the logo.`,
                  italic: true,
                  color: "dark_gray"
                })}]`,
              color: 0xFFFFFF
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        denimshirt: {
          id: '"minecraft:leather_chestplate"',
          tag: {
            cost: 3499,
            pos: ['982.5 64 -159.375', '982.5 64 -160.125', '982.5 64 -160.875', '982.5 64 -161.625'],
            rot: [180,0],
            display: {
              Name: `${rawJson({
                text: "Denim Shirt",
                color: "#2c72d4"
              })}`,
              Lore:`[${rawJson({
                  text: `Like pants but for the upper body.`,
                  italic: true,
                  color: "dark_gray"
                })}]`,
              color: 0x346aa3
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        jeans: {
          id: '"minecraft:leather_leggings"',
          tag: {
            cost: 4499,
            pos: ['974.5 64.5 -159.375', '974.5 64.5 -160.125', '974.5 64.5 -160.875', '974.5 64.5 -161.625'],
            rot: [-180,0],
            display: {
              Name: `${rawJson({
                text: "Jeans",
                color: "#1860db"
              })}`,
              Lore:`[${rawJson({
                  text: `Simple and useful.`,
                  italic: true,
                  color: "dark_gray"
                })}]`,
              color: 0x1f4d9c
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        socks: {
          id: '"minecraft:leather_leggings"',
          tag: {
            cost: 2199,
            pos: ['974.5 64.5 -163.375', '974.5 64.5 -164.125', '974.5 64.5 -164.875', '974.5 64.5 -165.625'],
            rot: [-180,0],
            display: {
              Name: `${rawJson({
                text: "Programming Socks",
                color: "#f772ea"
              })}`,
              Lore:`[${rawJson([
                {
                  text: `Frequently bought with `,
                  italic: true,
                  color: "dark_gray"
                },
                {
                  text: `C Programming Language,`,
                  // italic: true,
                  bold: true,
                  color: '#6c92eb'
                }
              ])},${rawJson([
                {
                  text: `2nd Edition by Brian W. Kernighan.`,
                  italic: true,
                  bold: true,
                  color: "#6c92eb"
                }
              ])}]`,
              color: 0xeaa6ed
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        pants: {
          id: '"minecraft:leather_leggings"',
          tag: {
            cost: 15499,
            pos: ['974.5 64.5 -155.375', '974.5 64.5 -156.125', '974.5 64.5 -156.875', '974.5 64.5 -157.625'],
            rot: [-180,0],
            display: {
              Name: `${rawJson({
                text: "Smart Pants",
                color: "#95d9ed"
              })}`,
              Lore:`[${rawJson([
                {
                  text: `Pair with your `,
                  italic: true,
                  color: "dark_gray"
                },
                {
                  text: `Smart Watch`,
                  // italic: true,
                  bold: true,
                  color: '#d1dbde'
                }
              ])},${rawJson([
                {
                  text: `for advanced tracking features!`,
                  italic: true,
                  color: "dark_gray"
                }
              ])}]`,
              color: 0xd1dbde
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
      },
      subway: {
        vegan: {
          id: '"minecraft:sweet_berries"',
          tag: {
            cost: 999,
            pos: '949 64 -152',
            sign: '"minecraft:jungle_wall_sign[facing=west]"',
            display: {
              Name: `${rawJson({
                text: "Gluten-Free Vegan Berry Sub",
                color: "#53cf11"
              })}`,
              Lore:`[${rawJson({
                text: `Healthy and still delicious.`,
                italic: true,
                color: "dark_gray"
              })}]`
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        gluten: {
          id: '"minecraft:bread"',
          tag: {
            cost: 899,
            pos: '949 64 -151',
            sign: '"minecraft:jungle_wall_sign[facing=west]"',
            display: {
              Name: `${rawJson({
                text: "Whole Wheat Sub",
                color: "#d6bc89"
              })}`,
              Lore:`[${rawJson({
                text: `Perfectly toasted buns.`,
                italic: true,
                color: "dark_gray"
              })}]`
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        meat: {
          id: '"minecraft:cooked_chicken"',
          tag: {
            cost: 1199,
            pos: '949 64 -150',
            sign: '"minecraft:jungle_wall_sign[facing=west]"',
            display: {
              Name: `${rawJson({
                text: "Meat Lovers\' Sub",
                color: "#a11538"
              })}`,
              Lore:`[${rawJson({
                text: `Made with fresh chicken.`,
                italic: true,
                color: "dark_gray"
              })}]`
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        drink: {
          id: '"minecraft:potion"',
          tag: {
            cost: 99,
            pos: '949 64 -149',
            sign: '"minecraft:jungle_wall_sign[facing=west]"',
            display: {
              Name: `${rawJson({
                text: "Soda",
                color: "#916443"
              })}`,
              Lore:`[${rawJson({
                text: `Fizzy Goodness.`,
                italic: true,
                color: "dark_gray"
              })}]`
            },
            Unbreakable:true,
            HideFlags:127,
            CustomPotionEffects:`[${toSnbt(
              {Id:'18b',Amplifier:'0b',Duration:300})}, ${toSnbt(
              {Id:'19b',Amplifier:'9b',Duration:200})}, ${toSnbt(
              {Id:'21b',Amplifier:'3b',Duration:400})}, ${toSnbt(
              {Id:'22b',Amplifier:'1b',Duration:200})}, ${toSnbt(
              {Id:'23b',Amplifier:'0b',Duration:5})}]`,
            Potion:`"minecraft:awkward"`,
            CustomPotionColor:0x382a20
          }
        }
      },
      boba: {
        milktea: {
          id: '"minecraft:potion"',
          tag: {
            cost: 559,
            pos: '998 64 -161',
            sign: '"minecraft:spruce_wall_sign[facing=south]"',
            display: {
              Name: `${rawJson({
                text: "Milk Tea",
                color: "#9c7f5c"
              })}`,
              Lore:`[${rawJson({
                text: `The classic.`,
                italic: true,
                color: "dark_gray"
              })}]`
            },
            Unbreakable:true,
            HideFlags:127,
            Potion:`"minecraft:awkward"`,
            CustomPotionColor:0xb59369
          }
        },
        almondtea: {
          id: '"minecraft:potion"',
          tag: {
            cost: 589,
            pos: '1000 64 -161',
            sign: '"minecraft:spruce_wall_sign[facing=south]"',
            display: {
              Name: `${rawJson({
                text: "Almond Milk Tea",
                color: "#9c8857"
              })}`,
              Lore:`[${rawJson({
                text: `A Delicious Drupe.`,
                italic: true,
                color: "dark_gray"
              })}]`
            },
            Unbreakable:true,
            HideFlags:127,
            Potion:`"minecraft:awkward"`,
            CustomPotionColor:0xb89a5a
          }
        },
        oolong: {
          id: '"minecraft:potion"',
          tag: {
            cost: 619,
            pos: '1002 64 -161',
            sign: '"minecraft:spruce_wall_sign[facing=south]"',
            display: {
              Name: `${rawJson({
                text: "Oolong Tea",
                color: "#e6b925"
              })}`,
              Lore:`[${rawJson({
                text: `烏龍茶`,
                italic: true,
                color: "dark_gray"
              })}]`
            },
            Unbreakable:true,
            HideFlags:127,
            Potion:`"minecraft:awkward"`,
            CustomPotionColor:0xdbad14
          }
        },
        water: {
          id: '"minecraft:potion"',
          tag: {
            cost: 449,
            pos: '1004 64 -161',
            sign: '"minecraft:spruce_wall_sign[facing=south]"',
            display: {
              Name: `${rawJson({
                text: "Unsweetened 0-Calorie Tea",
                color: "#cca860"
              })}`,
              Lore:`[${rawJson({
                text: `Healthy Goodness.`,
                italic: true,
                color: "dark_gray"
              })}]`
            },
            Unbreakable:true,
            HideFlags:127,
            Potion:`"minecraft:awkward"`,
            // CustomPotionColor:0xdbad14
          }
        }
      },
      ramen: {
        tonkotsu: {
          id: '"minecraft:mushroom_stew"',
          tag: {
            cost: 1499,
            display: {
              Name: `${rawJson({
                text: "Tonkotsu Ramen",
                color: "#bfa569"
              })}`,
              Lore:`[${rawJson({
                text: `Using Rich Pork Broth.`,
                italic: true,
                color: "dark_gray"
              })}]`
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        shoyu: {
          id: '"minecraft:beetroot_soup"',
          tag: {
            cost: 1299,
            display: {
              Name: `${rawJson({
                text: "Shoyu Ramen",
                color: "#bd7d5c"
              })}`,
              Lore:`[${rawJson({
                text: `Clear broth with soy sauce.`,
                italic: true,
                color: "dark_gray"
              })}]`
            },
            Unbreakable:true,
            HideFlags:127
          }
        },
        miso: {
          id: '"minecraft:rabbit_stew"',
          tag: {
            cost: 1399,
            display: {
              Name: `${rawJson({
                text: "Miso Ramen",
                color: "#b87f39"
              })}`,
              Lore:`[${rawJson({
                text: `Sweet, Tangy Miso paste.`,
                italic: true,
                color: "dark_gray"
              })}]`
            },
            Unbreakable:true,
            HideFlags:127
          }
        }
      },
      starbucks: {
        water: {
          id: '"minecraft:potion"',
          tag: {
            cost: 3251,
            pos: '1047 67 -149',
            sign: '"minecraft:dark_oak_wall_sign[facing=south]"',
            display: {
              Name: `${rawJson({
                text: "Salted Caramel Mocha",
                color: "#995d43"
              })}`,
              Lore:`[${rawJson([
                {
                  text: `Specifically: `,
                  italic: true,
                  color: "dark_gray"
                },
              ])},${rawJson([
                {
                  text: `Quad Long Shot Grande in a`,
                  italic: true,
                  color: "dark_gray"
                },
              ])},${rawJson([
                {
                  text: `Venti Cup Half Calf Double`,
                  italic: true,
                  color: "dark_gray"
                },
              ])},${rawJson([
                {
                  text: `Cupped No Sleeve Salted Caramel`,
                  italic: true,
                  color: "dark_gray"
                },
              ])},${rawJson([
                {
                  text: `Mocha Latte With 2 Pumps of`,
                  italic: true,
                  color: "dark_gray"
                },
              ])},${rawJson([
                {
                  text: `White Chocolate Mocha for Mocha`,
                  italic: true,
                  color: "dark_gray"
                },
              ])},${rawJson([
                {
                  text: `and Substitute 2 Pumps of Hazelnut`,
                  italic: true,
                  color: "dark_gray"
                },
              ])},${rawJson([
                {
                  text: `for Toffee Nut Half Whole Milk`,
                  italic: true,
                  color: "dark_gray"
                },
              ])},${rawJson([
                {
                  text: `Half Breve With No Whipped Cream`,
                  italic: true,
                  color: "dark_gray"
                },
              ])},${rawJson([
                {
                  text: `Extra Hot Extra Foam Extra`,
                  italic: true,
                  color: "dark_gray"
                },
              ])},${rawJson([
                {
                  text: `Caramel Drizzle Extra Salt Add a`,
                  italic: true,
                  color: "dark_gray"
                },
              ])},${rawJson([
                {
                  text: `Scoop of Vanilla Bean Powder`,
                  italic: true,
                  color: "dark_gray"
                },
              ])},${rawJson([
                {
                  text: `With Light Ice Well Stirred.`,
                  italic: true,
                  color: "dark_gray"
                }
              ])}]`
            },
            Unbreakable:true,
            HideFlags:127,
            Potion:`"minecraft:awkward"`,
            CustomPotionColor:0x804d37
          }
        },
        pumpkinspice:{
          id: '"minecraft:potion"',
          tag: {
            cost: 525,
            pos: '1048 67 -149',
            sign: '"minecraft:dark_oak_wall_sign[facing=south]"',
            display: {
              Name: `${rawJson({
                text: "Pumpkin Spice Latte",
                color: "#d4843d"
              })}`,
              Lore:`[${rawJson([
                {
                  text: `Venti`,
                  italic: true,
                  color: "dark_gray"
                }
              ])}]`
            },
            Unbreakable:true,
            HideFlags:127,
            Potion:`"minecraft:awkward"`,
            CustomPotionColor:0xd4843d
          }
        },
        whitechoco:{
          id: '"minecraft:potion"',
          tag: {
            cost: 475,
            pos: '1049 67 -149',
            sign: '"minecraft:dark_oak_wall_sign[facing=south]"',
            display: {
              Name: `${rawJson({
                text: "White Chocolate Mocha",
                color: "#d4b892"
              })}`,
              Lore:`[${rawJson([
                {
                  text: `Venti`,
                  italic: true,
                  color: "dark_gray"
                }
              ])}]`
            },
            Unbreakable:true,
            HideFlags:127,
            Potion:`"minecraft:awkward"`,
            CustomPotionColor:0xd4b892
          }
        },
        vanilla:{
          id: '"minecraft:potion"',
          tag: {
            cost: 465,
            pos: '1050 67 -149',
            sign: '"minecraft:dark_oak_wall_sign[facing=south]"',
            display: {
              Name: `${rawJson({
                text: "Skinny Vanilla Latte",
                color: "#c79758"
              })}`,
              Lore:`[${rawJson([
                {
                  text: `Venti`,
                  italic: true,
                  color: "dark_gray"
                }
              ])}]`
            },
            Unbreakable:true,
            HideFlags:127,
            Potion:`"minecraft:awkward"`,
            CustomPotionColor:0xc79758
          }
        },
        frappuccino:{
          id: '"minecraft:potion"',
          tag: {
            cost: 465,
            pos: '1051 67 -149',
            sign: '"minecraft:dark_oak_wall_sign[facing=south]"',
            display: {
              Name: `${rawJson({
                text: "Mocha Frappuccino",
                color: "#bd7f5b"
              })}`,
              Lore:`[${rawJson([
                {
                  text: `Venti`,
                  italic: true,
                  color: "dark_gray"
                }
              ])}]`
            },
            Unbreakable:true,
            HideFlags:127,
            Potion:`"minecraft:awkward"`,
            CustomPotionColor:0xbd7f5b
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
      Object.entries(items[sto]).forEach(([k, v], idx) => {
        v = <any> v;
        if (!('display' in v.tag)) {
          Object.assign(v.tag, {display:{Lore:`[]`}});
        }
        v.tag.store = `"${sto}"`
        v.tag.item = `"${k}"`

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

        if (["clothes"].includes(sto)) {
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
            `summon armor_stand ${x} {DisabledSlots:${disabledslots},NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["armorstand-clothes-display"],Pose:{Head:[${v.tag.rot[1]}F,0F,0F],LeftArm:[0F,0F,0F],RightArm:[0F,0F,0F],LeftLeg:[0f,0f,355f],RightLeg:[0f,0f,5f]},Rotation:[${v.tag.rot[0]}F,0F],ArmorItems:${armor}}`
          ))
        } else if (["subway", "boba", "starbucks"].includes(sto)) {
          store.commands.push([
            `setblock ${v.tag.pos} air`,
            `setblock ${v.tag.pos} ${eval(v.tag.sign)}{Color:"black",GlowingText:0b,Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger storetrigger set ${hash(k)}"}}',Text2:${v.tag.display.Name},Text3:'{"text":"${toCost(v.tag.cost)}","bold":true,"color":"white"}',Text4:''}`
          ])
        } else if (["safeway"].includes(sto)) {
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
                message: "__NONE__",
                silent: true,
                command: [
                  `give \${select.player} \${toGive(item.store.unsold.${sto}.${k})}`
                ]
              }]
            }]
          })
        }
      })
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
      // scarletletter: {
      //   author: "Nathaniel Hawthorne",
      //   title:"The Scarlet Letter"
      // },
      // proposal: {
      //   author: "Jonathan Swift",
      //   title: "A Modest Proposal"
      // },
      assembly: {
        author: "Wikipedia, the Free Encyclopedia",
        title: "x86 Assembly Language"
      },
      vim: {
        author: "GNU",
        title: "Vim Manual"
      },
      // chess: {
      //   author: "José Raúl Capablanca",
      //   title: "Chess Fundamentals"
      // },
      // bible: {
      //   title: "The King James Bible",
      //   author: "God"
      // },
      // paradiselost: {
      //   title: "Paradise Lost",
      //   author: "John Milton"
      // },
      tomsawyer: {
        title: "The Adventures of Tom Sawyer",
        author: "Mark Twain"
      },
      lorem: {
        title: "Lorem Ipsum...",
        author: "Filler Text"
      },
      mcguide: {
        title: "The Player's Guide to Minecraft",
        author: "Stephen O'Brien"
      },
      blank: {
        title: "Empty Notebook",
        author: "Francis O'Bognole"
      },
      // bee: {
      //   title: "The Bee Movie",
      //   author: "DreamWorks Animation"
      // }
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