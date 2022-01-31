tag @a[tag=victim-of-dialogue-by-cameron, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-cameron, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-cameron, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Cameron Au-Flauge","color":"#197037","bold":true},"> ",{"text":"Did Katy tell you? Darn, I thought I had the perfect hiding spot..."}]
execute at @e[type=villager,tag=npc-cameron, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/cameron/0-2 68t
tag @a remove npc-eavesdropper
