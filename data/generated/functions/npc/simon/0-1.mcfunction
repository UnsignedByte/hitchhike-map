# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"There is no way you people are welcome up here! This is private property!!"}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
tag @e[tag=npc-simon, limit=1] remove npc-unface
schedule function generated:npc/simon/0-2 150t
