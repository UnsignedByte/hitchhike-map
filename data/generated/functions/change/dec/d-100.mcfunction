scoreboard players remove dec change 100
scoreboard players remove count change 100
execute as @e[type=item,nbt={Item:{id: "minecraft:iron_ingot", tag: {ismoney: 1b, display: {Name: '{"text":"1B","color":"#717171"}', Lore: ['{"text":"Worth 1.00 BCK"}']}}}},distance=..1,limit=1] run function generated:change/dec/dec-self
execute positioned ~ ~ ~ if score dec change matches 100.. if entity @e[type=item,nbt={Item:{id: "minecraft:iron_ingot", tag: {ismoney: 1b, display: {Name: '{"text":"1B","color":"#717171"}', Lore: ['{"text":"Worth 1.00 BCK"}']}}}},distance=..1,limit=1] run function generated:change/dec/d-100
