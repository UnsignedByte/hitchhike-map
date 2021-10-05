# Dialogue line #2-9: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"And while you're at it, get me some water. Not any water: I want "},{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true},{"text":". Don't give me any of that \"processed tap water\" or \"mineral water\"."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
schedule function generated:npc/simon/2-09 322t
