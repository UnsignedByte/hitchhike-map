tag @a[tag=victim-of-dialogue-by-birthdayboy, limit=1] add npc-eavesdropper
execute at @e[tag=npc-birthdayboy, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-7: speak and make noise.
execute at @e[tag=npc-birthdayboy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Matt Norma","bold":true},"> ",{"text":"Sorry to bother you then... Have a nice day!"}]
execute at @e[tag=npc-birthdayboy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/birthdayboy/0-end 78t
tag @a remove npc-eavesdropper
