scoreboard objectives add change-count-tmp dummy
scoreboard players set val change-count-tmp 1
execute as @e[type=item,nbt={Item:{id: "minecraft:nether_brick", tag: {display: {Name: '{"text":"1b","color":"#3d1e24"}', Lore: ['{"text":"Worth 0.01 BOV"}']}}}},distance=..1] run function generated:change_count_single
scoreboard players set val change-count-tmp 5
execute as @e[type=item,nbt={Item:{id: "minecraft:brick", tag: {display: {Name: '{"text":"5b","color":"#7d3d2b"}', Lore: ['{"text":"Worth 0.05 BOV"}']}}}},distance=..1] run function generated:change_count_single
scoreboard players set val change-count-tmp 10
execute as @e[type=item,nbt={Item:{id: "minecraft:copper_ingot", tag: {display: {Name: '{"text":"10b","color":"#bf5935"}', Lore: ['{"text":"Worth 0.10 BOV"}']}}}},distance=..1] run function generated:change_count_single
scoreboard players set val change-count-tmp 25
execute as @e[type=item,nbt={Item:{id: "minecraft:gold_ingot", tag: {display: {Name: '{"text":"25b","color":"#d99413"}', Lore: ['{"text":"Worth 0.25 BOV"}']}}}},distance=..1] run function generated:change_count_single
scoreboard players set val change-count-tmp 100
execute as @e[type=item,nbt={Item:{id: "minecraft:iron_ingot", tag: {display: {Name: '{"text":"1B","color":"#717171"}', Lore: ['{"text":"Worth 1.00 BOV"}']}}}},distance=..1] run function generated:change_count_single
scoreboard players set val change-count-tmp 500
execute as @e[type=item,nbt={Item:{id: "minecraft:netherite_ingot", tag: {display: {Name: '{"text":"5B","color":"#302829"}', Lore: ['{"text":"Worth 5.00 BOV"}']}}}},distance=..1] run function generated:change_count_single
scoreboard objectives remove change-count-tmp
