tag @a[tag=victim-of-dialogue-by-douglassainsworth, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-douglassainsworth, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[type=villager,tag=npc-douglassainsworth, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Douglass Ainsworth","color":"#780fa8","bold":true},"> ",{"text":"Wait, What's a kid like you doing here? You better not be another one of Percy's \"friends.\""}]
execute at @e[type=villager,tag=npc-douglassainsworth, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/douglassainsworth/0-4 112t
tag @a remove npc-eavesdropper
