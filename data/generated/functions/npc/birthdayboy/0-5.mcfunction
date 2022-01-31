tag @a[tag=victim-of-dialogue-by-birthdayboy, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-birthdayboy, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-6: speak and make noise.
execute at @e[type=villager,tag=npc-birthdayboy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Matt Norma","color":"#de4b40","bold":true},"> ",{"text":"Well, you could stay and have some cake if you want, I guess."}]
execute at @e[type=villager,tag=npc-birthdayboy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/birthdayboy/0-6 80t
tag @a remove npc-eavesdropper
