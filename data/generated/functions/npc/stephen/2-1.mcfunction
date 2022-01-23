tag @a[tag=victim-of-dialogue-by-stephen, limit=1] add npc-eavesdropper
execute at @e[tag=npc-stephen, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #2-2: speak and make noise.
execute at @e[tag=npc-stephen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Stephen Fallus","bold":true},"> ",{"text":"All we needed is the funding..."}]
execute at @e[tag=npc-stephen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/stephen/2-end 54t
tag @a remove npc-eavesdropper
