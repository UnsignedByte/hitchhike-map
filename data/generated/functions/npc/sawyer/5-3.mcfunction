tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-sawyer, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #5-4: speak and make noise.
execute at @e[type=villager,tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#8de359","bold":true},"> ",{"text":"I've taken a look at the file. Give me a second and then we can start fixing it up."}]
execute at @e[type=villager,tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tag @e[tag=npc-sawyer] remove npc-unface
schedule function generated:npc/sawyer/5-4 104t
tag @a remove npc-eavesdropper
