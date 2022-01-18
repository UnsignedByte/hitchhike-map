scoreboard players remove dec change 10
scoreboard players remove count change 10
execute as @e[type=item,nbt={Item:{id: "minecraft:copper_ingot", tag: {ismoney: 1b, display: {Name: '{"text":"10b","color":"#bf5935"}', Lore: ['{"text":"Worth 0.10 BCK"}']}}}},distance=..1,limit=1] run function generated:change/dec/dec-self
execute positioned ~ ~ ~ if score dec change matches 10.. if entity @e[type=item,nbt={Item:{id: "minecraft:copper_ingot", tag: {ismoney: 1b, display: {Name: '{"text":"10b","color":"#bf5935"}', Lore: ['{"text":"Worth 0.10 BCK"}']}}}},distance=..1,limit=1] run function generated:change/dec/d-10
