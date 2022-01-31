tag @a[tag=victim-of-dialogue-by-douglassainsworth, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-douglassainsworth, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-douglassainsworth, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Douglass Ainsworth","color":"#780fa8","bold":true},"> ",{"text":"He's still in a meeting with Damien, and might be busy for a while."}]
execute at @e[type=villager,tag=npc-douglassainsworth, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/douglassainsworth/0-2 76t
tag @a remove npc-eavesdropper
