tag @a[tag=victim-of-dialogue-by-megpallen, limit=1] add npc-eavesdropper
execute at @e[tag=npc-megpallen, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-megpallen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Maggie Pallen","bold":true},"> ",{"text":"Maggie is trying out a vegan diet for the first time."}]
execute at @e[tag=npc-megpallen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/megpallen/0-2 102t
tag @a remove npc-eavesdropper