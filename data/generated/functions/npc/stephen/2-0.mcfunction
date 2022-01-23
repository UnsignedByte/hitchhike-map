tag @a[tag=victim-of-dialogue-by-stephen, limit=1] add npc-eavesdropper
execute at @e[tag=npc-stephen, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #2-1: speak and make noise.
execute at @e[tag=npc-stephen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Stephen Fallus","bold":true},"> ",{"text":"Did he even listen to us?"}]
execute at @e[tag=npc-stephen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tp @e[tag=npc-stephen, limit=1] 794.70 78 -46.50 -135 0
schedule function generated:npc/stephen/2-1 48t
tag @a remove npc-eavesdropper
