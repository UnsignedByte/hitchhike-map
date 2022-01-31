tag @a[tag=victim-of-dialogue-by-birthdayboy, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-birthdayboy, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-1: speak and make noise.
execute at @e[type=villager,tag=npc-birthdayboy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Matt Norma","color":"#de4b40","bold":true},"> ",{"text":"Don't worry, more cake to myself! Hahaha."}]
execute at @e[type=villager,tag=npc-birthdayboy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/birthdayboy/1-end 44t
tag @a remove npc-eavesdropper
