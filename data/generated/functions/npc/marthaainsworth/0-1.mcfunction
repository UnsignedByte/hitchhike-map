tag @a[tag=victim-of-dialogue-by-marthaainsworth, limit=1] add npc-eavesdropper
execute at @e[tag=npc-marthaainsworth, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[tag=npc-marthaainsworth, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Martha Ainsworth","color":"#91faf2","bold":true},"> ",{"text":"Anyways, you must be here to see my son! He's just upstairs."}]
execute at @e[tag=npc-marthaainsworth, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/marthaainsworth/0-2 102t
tag @a remove npc-eavesdropper
