tag @a[tag=victim-of-dialogue-by-marthaaimsworth, limit=1] add npc-eavesdropper
execute at @e[tag=npc-marthaaimsworth, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[tag=npc-marthaaimsworth, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Martha Aimsworth","bold":true},"> ",{"text":"I'm so glad he seems to have so many friends now! Its almost a different boy every day."}]
execute at @e[tag=npc-marthaaimsworth, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/marthaaimsworth/0-3 150t
tag @a remove npc-eavesdropper