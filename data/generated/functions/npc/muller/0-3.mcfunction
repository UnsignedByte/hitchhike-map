tag @a[tag=victim-of-dialogue-by-muller, limit=1] add npc-eavesdropper
execute at @e[tag=npc-muller, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[tag=npc-muller, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Egress Muller","color":"#608082","bold":true},"> ",{"text":"Do try to leave this area soon before someone takes notice, though. Have a nice one!"}]
execute at @e[tag=npc-muller, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/muller/0-end 192t
tag @a remove npc-eavesdropper
