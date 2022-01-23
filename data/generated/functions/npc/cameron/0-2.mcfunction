tag @a[tag=victim-of-dialogue-by-cameron, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-cameron, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[type=villager,tag=npc-cameron, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Cameron Au-Flauge","color":"#197037","bold":true},"> ",{"text":"I guess I've lost then. I can't believe I didn't see you coming up here."}]
execute at @e[type=villager,tag=npc-cameron, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/cameron/0-3 144t
tag @a remove npc-eavesdropper
