tag @a[tag=victim-of-dialogue-by-percivalainsworth, limit=1] add npc-eavesdropper
execute at @e[tag=npc-percivalainsworth, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[tag=npc-percivalainsworth, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Percival Ainsworth","bold":true},"> ",{"text":"What are you waiting for? Stop bothering me and get out!"}]
execute at @e[tag=npc-percivalainsworth, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/percivalainsworth/0-end 108t
tag @a remove npc-eavesdropper
