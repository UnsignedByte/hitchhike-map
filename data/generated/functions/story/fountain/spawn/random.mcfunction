function generated:rng/rng
scoreboard players operation rng vars += _rngmin vars
execute if score rng vars matches 0 run summon item ~ ~ ~ {Item:{Count: 1b, id: "minecraft:nether_brick", tag: {display: {Name: '{"text":"1b","color":"#3d1e24"}', Lore: ['{"text":"Worth 0.01 BOV"}']}}}}
execute if score rng vars matches 1 run summon item ~ ~ ~ {Item:{Count: 1b, id: "minecraft:brick", tag: {display: {Name: '{"text":"5b","color":"#7d3d2b"}', Lore: ['{"text":"Worth 0.05 BOV"}']}}}}
execute if score rng vars matches 2 run summon item ~ ~ ~ {Item:{Count: 1b, id: "minecraft:copper_ingot", tag: {display: {Name: '{"text":"10b","color":"#bf5935"}', Lore: ['{"text":"Worth 0.10 BOV"}']}}}}
execute if score rng vars matches 3 run summon item ~ ~ ~ {Item:{Count: 1b, id: "minecraft:gold_ingot", tag: {display: {Name: '{"text":"25b","color":"#d99413"}', Lore: ['{"text":"Worth 0.25 BOV"}']}}}}
execute if score rng vars matches 4 run summon item ~ ~ ~ {Item:{Count: 1b, id: "minecraft:iron_ingot", tag: {display: {Name: '{"text":"1B","color":"#717171"}', Lore: ['{"text":"Worth 1.00 BOV"}']}}}}
execute if score rng vars matches 5 run summon item ~ ~ ~ {Item:{Count: 1b, id: "minecraft:netherite_ingot", tag: {display: {Name: '{"text":"5B","color":"#302829"}', Lore: ['{"text":"Worth 5.00 BOV"}']}}}}
