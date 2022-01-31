tag @a[tag=victim-of-dialogue-by-muller, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-muller, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-muller, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Elbert Muller","color":"#608082","bold":true},"> ",{"text":"Haven't you heard? I'm part of the big game of hide and seek going on."}]
execute at @e[type=villager,tag=npc-muller, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/muller/0-2 88t
tag @a remove npc-eavesdropper
