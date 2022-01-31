tag @a[tag=victim-of-dialogue-by-solomon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-solomon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-8: speak and make noise.
execute at @e[type=villager,tag=npc-solomon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Jason Quint","color":"#732424","bold":true},"> ",{"text":"Imagine if I let you get the key to the electrical box from the chest in the basement, climb up that tower, and get hurt doing so!"}]
execute at @e[type=villager,tag=npc-solomon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
function generated:quests/tower-start
schedule function generated:npc/solomon/0-8 152t
tag @a remove npc-eavesdropper
