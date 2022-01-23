tag @a[tag=victim-of-dialogue-by-stephen, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-stephen, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-1: speak and make noise.
execute at @e[type=villager,tag=npc-stephen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Stephen Fallus","bold":true},"> ",{"text":"Hmm... You make a very intriguing proposition."}]
execute at @e[type=villager,tag=npc-stephen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tp @e[type=villager,tag=npc-stephen, limit=1] 794.70 78 -46.50 -135 0
schedule function generated:npc/stephen/0-1 100t
tag @a remove npc-eavesdropper
