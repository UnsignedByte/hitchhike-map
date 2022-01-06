tag @a[tag=victim-of-dialogue-by-muller, limit=1] add npc-eavesdropper
execute at @e[tag=npc-muller, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-muller, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Egress Muller","color":"#608082","bold":true},"> ",{"text":"Regardless, I'm part of the big game of hide and seek I'm sure you know is going on."}]
execute at @e[tag=npc-muller, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/muller/0-2 156t
tag @a remove npc-eavesdropper
