tag @a[tag=victim-of-dialogue-by-birthdayboy, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-birthdayboy, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[type=villager,tag=npc-birthdayboy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Matt Norma","color":"#de4b40","bold":true},"> ",{"text":"Don't worry, its only been an hour, it's not that bad."}]
execute at @e[type=villager,tag=npc-birthdayboy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/birthdayboy/0-4 78t
tag @a remove npc-eavesdropper
