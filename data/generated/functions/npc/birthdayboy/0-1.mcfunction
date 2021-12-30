tag @a[tag=victim-of-dialogue-by-birthdayboy, limit=1] add npc-eavesdropper
execute at @e[tag=npc-birthdayboy, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-birthdayboy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Mat Norma","bold":true},"> ",{"text":"You must have been late, I'm sure everyone else should come soon too!"}]
execute at @e[tag=npc-birthdayboy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/birthdayboy/0-2 156t
tag @a remove npc-eavesdropper
