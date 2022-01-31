tag @a[tag=victim-of-dialogue-by-stephen, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-stephen, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-1: speak and make noise.
execute at @e[type=villager,tag=npc-stephen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Steve Allen","color":"#f08c71","bold":true},"> ",{"text":"I definitely agree with Matthew on this."}]
execute at @e[type=villager,tag=npc-stephen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
tp @e[type=villager,tag=npc-stephen, limit=1] 794.70 78 -46.50 -14 0
schedule function generated:npc/stephen/1-1 52t
tag @a remove npc-eavesdropper
