tag @a[tag=victim-of-dialogue-by-ekaterina, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-ekaterina, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-ekaterina, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Ekaterina Zubov","bold":true},"> ",{"text":"Do you happen to know what has happened with the internet?"}]
execute at @e[type=villager,tag=npc-ekaterina, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/ekaterina/0-1 102t
tag @a remove npc-eavesdropper
