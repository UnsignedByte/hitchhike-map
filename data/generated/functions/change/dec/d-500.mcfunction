scoreboard players remove dec change 500
scoreboard players remove count change 500
execute as @e[type=item,nbt={Item:{id: "minecraft:netherite_ingot", tag: {ismoney: 1b, display: {Name: '{"text":"5B","color":"#302829"}', Lore: ['{"text":"Worth 5.00 BCK"}']}}}},distance=..1,limit=1] run function generated:change/dec/dec-self
execute positioned ~ ~ ~ if score dec change matches 500.. if entity @e[type=item,nbt={Item:{id: "minecraft:netherite_ingot", tag: {ismoney: 1b, display: {Name: '{"text":"5B","color":"#302829"}', Lore: ['{"text":"Worth 5.00 BCK"}']}}}},distance=..1,limit=1] run function generated:change/dec/d-500
