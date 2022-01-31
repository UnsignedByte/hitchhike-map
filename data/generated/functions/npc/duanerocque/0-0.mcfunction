tag @a[tag=victim-of-dialogue-by-duanerocque, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-duanerocque, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-duanerocque, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Dwight Rocque","color":"#e6e6e6","bold":true},"> ",{"text":"Another one of you? Alright, alright, the food is almost done, be patient!"}]
execute at @e[type=villager,tag=npc-duanerocque, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/duanerocque/0-1 96t
tag @a remove npc-eavesdropper
