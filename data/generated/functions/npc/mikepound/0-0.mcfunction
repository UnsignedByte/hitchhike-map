tag @a[tag=victim-of-dialogue-by-mikepound, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-mikepound, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-mikepound, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Mike Pound","bold":true},"> ",{"text":"What do you think about my K-d tree implementation?"}]
execute at @e[type=villager,tag=npc-mikepound, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/mikepound/0-1 96t
tag @a remove npc-eavesdropper
