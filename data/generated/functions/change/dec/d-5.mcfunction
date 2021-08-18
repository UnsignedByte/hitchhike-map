scoreboard players remove dec change 5
scoreboard players remove count change 5
execute as @e[type=item,nbt={Item:{id: "minecraft:brick", tag: {display: {Name: '{"text":"5b","color":"#7d3d2b"}', Lore: ['{"text":"Worth 0.05 BOV"}']}}}},distance=..1,limit=1] run function generated:change/dec/dec-self
execute positioned ~ ~ ~ if score dec change matches 5.. if entity @e[type=item,nbt={Item:{id: "minecraft:brick", tag: {display: {Name: '{"text":"5b","color":"#7d3d2b"}', Lore: ['{"text":"Worth 0.05 BOV"}']}}}},distance=..1,limit=1] run function generated:change/dec/d-5
