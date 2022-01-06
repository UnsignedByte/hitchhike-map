tag @a[tag=victim-of-dialogue-by-plenton, limit=1] add npc-eavesdropper
execute at @e[tag=npc-plenton, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-4: speak and make noise.
execute at @e[tag=npc-plenton, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Mrs. Plenton","bold":true},"> ",{"text":"Good heavens, your parents should have taught you some manners."}]
execute at @e[tag=npc-plenton, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/plenton/0-4 126t
tag @a remove npc-eavesdropper
