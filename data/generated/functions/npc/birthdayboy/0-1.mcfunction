tag @a[tag=victim-of-dialogue-by-birthdayboy, limit=1] add npc-eavesdropper
execute at @e[tag=npc-birthdayboy, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-birthdayboy, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Matt Norma","color":"#de4b40","bold":true},"> ",{"text":"I know, I know, my birthday was last week, but everyone was busy so I'm having another party today!"}]
execute at @e[tag=npc-birthdayboy, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/birthdayboy/0-2 162t
tag @a remove npc-eavesdropper
