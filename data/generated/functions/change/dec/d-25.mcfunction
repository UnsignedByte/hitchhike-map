scoreboard players remove dec change 25
scoreboard players remove count change 25
execute as @e[type=item,nbt={Item:{id: "minecraft:gold_ingot", tag: {ismoney: 1b, display: {Name: '{"text":"25b","color":"#d99413"}', Lore: ['{"text":"Worth 0.25 BCK"}']}}}},distance=..1,limit=1] run function generated:change/dec/dec-self
execute positioned ~ ~ ~ if score dec change matches 25.. if entity @e[type=item,nbt={Item:{id: "minecraft:gold_ingot", tag: {ismoney: 1b, display: {Name: '{"text":"25b","color":"#d99413"}', Lore: ['{"text":"Worth 0.25 BCK"}']}}}},distance=..1,limit=1] run function generated:change/dec/d-25
