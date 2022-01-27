tag @a[tag=victim-of-dialogue-by-douglassainsworth, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-douglassainsworth, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-douglassainsworth, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Douglass Ainsworth","color":"#9817d4","bold":true},"> ",{"text":"It will maybe take another half hour or so."}]
execute at @e[type=villager,tag=npc-douglassainsworth, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tag @e[type=villager,tag=npc-douglassainsworth, limit=1] remove npc-unface
schedule function generated:npc/douglassainsworth/0-3 84t
tag @a remove npc-eavesdropper
