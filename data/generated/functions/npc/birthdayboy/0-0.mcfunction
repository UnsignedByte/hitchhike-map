tag @a[tag=victim-of-dialogue-by-birthdayboy, limit=1] add npc-eavesdropper
execute at @e[tag=npc-birthdayboy, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-birthdayboy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Matt Norma","bold":true},"> ",{"text":"Oh hi! Are you here for my birthday party?"}]
execute at @e[tag=npc-birthdayboy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/birthdayboy/0-1 72t
tag @a remove npc-eavesdropper
