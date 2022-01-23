tag @a[tag=victim-of-dialogue-by-matthew, limit=1] add npc-eavesdropper
execute at @e[tag=npc-matthew, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-matthew, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Matthew Sciento","bold":true},"> ",{"text":"As the emerging statistical models are clearly revealing, steps made, provided in the right direction, can significantly improve our quarter performance."}]
execute at @e[tag=npc-matthew, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/matthew/0-1 294t
tag @a remove npc-eavesdropper
