tag @a[tag=victim-of-dialogue-by-starbucks, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-starbucks, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-starbucks, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Bethany Norma","color":"#00704a","bold":true},"> ",{"text":"Hi, welcome to Starbucks!"}]
execute at @e[type=villager,tag=npc-starbucks, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/starbucks/0-1 42t
tag @a remove npc-eavesdropper
