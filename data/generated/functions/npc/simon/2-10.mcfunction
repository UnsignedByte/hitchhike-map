# Dialogue line #2-11: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Unfortunately, it corrupted when windows formatted it without even asking me!"}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
scoreboard players set -held story-simon 0
kill @e[tag=simon-holder]
tp @e[tag=npc-simon, limit=1] 956.50 74 203.50 90 55
schedule function generated:npc/simon/2-11 -1t
