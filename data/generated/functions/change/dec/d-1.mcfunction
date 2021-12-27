scoreboard players remove dec change 1
scoreboard players remove count change 1
execute as @e[type=item,nbt={Item:{id: "minecraft:nether_brick", tag: {ismoney: 1b, display: {Name: '{"text":"1b","color":"#3d1e24"}', Lore: ['{"text":"Worth 0.01 BOV"}']}}}},distance=..1,limit=1] run function generated:change/dec/dec-self
execute positioned ~ ~ ~ if score dec change matches 1.. if entity @e[type=item,nbt={Item:{id: "minecraft:nether_brick", tag: {ismoney: 1b, display: {Name: '{"text":"1b","color":"#3d1e24"}', Lore: ['{"text":"Worth 0.01 BOV"}']}}}},distance=..1,limit=1] run function generated:change/dec/d-1
