tag @a[tag=victim-of-dialogue-by-marthaainsworth, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-marthaainsworth, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-5: speak and make noise.
execute at @e[type=villager,tag=npc-marthaainsworth, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Martha Ainsworth","color":"#91faf2","bold":true},"> ",{"text":"Thank you for sticking with him, I know he can be a little difficult sometimes."}]
execute at @e[type=villager,tag=npc-marthaainsworth, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/marthaainsworth/0-end 92t
tag @a remove npc-eavesdropper
