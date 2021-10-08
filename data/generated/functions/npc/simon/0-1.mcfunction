# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"There is no way "},{"text":"you people","italic":true},{"text":" are welcome up here. This is private property, and trespassing is "},{"text":"ILLEGAL","bold":true},{"text":"."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
tag @e[tag=npc-simon, limit=1] remove npc-unface
schedule function generated:npc/simon/0-2 -1t
