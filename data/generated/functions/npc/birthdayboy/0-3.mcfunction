tag @a[tag=victim-of-dialogue-by-birthdayboy, limit=1] add npc-eavesdropper
execute at @e[tag=npc-birthdayboy, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[tag=npc-birthdayboy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Mat Norma","bold":true},"> ",{"text":"...Oh, you aren't here for my birthday?","italic":true}]
execute at @e[tag=npc-birthdayboy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/birthdayboy/0-4 60t
tag @a remove npc-eavesdropper
