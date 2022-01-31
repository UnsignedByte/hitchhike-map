tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-simon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #2-11: speak and make noise.
execute at @e[type=villager,tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Unfortunately, it corrupted when Windows formatted it without even asking me!"}]
execute at @e[type=villager,tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
scoreboard players set -held story-simon 0
kill @e[tag=simon-holder]
tp @e[type=villager,tag=npc-simon, limit=1] 956.50 74 203.50 90 55
schedule function generated:npc/simon/2-11 96t
tag @a remove npc-eavesdropper
