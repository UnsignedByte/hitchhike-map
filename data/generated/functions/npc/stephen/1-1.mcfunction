tag @a[tag=victim-of-dialogue-by-stephen, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-stephen, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-2: speak and make noise.
execute at @e[type=villager,tag=npc-stephen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Steve Allen","color":"#f08c71","bold":true},"> ",{"text":"Additionally, I would also ask us to consider the large-scale impacts of such changes within the environment of the company."}]
execute at @e[type=villager,tag=npc-stephen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/stephen/1-2 152t
tag @a remove npc-eavesdropper
