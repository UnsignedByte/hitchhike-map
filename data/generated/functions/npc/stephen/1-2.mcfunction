tag @a[tag=victim-of-dialogue-by-stephen, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-stephen, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #1-3: speak and make noise.
execute at @e[type=villager,tag=npc-stephen, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Steve Allen","color":"#f08c71","bold":true},"> ",{"text":"With the necessary funding, these approaches can definitely set the organization back on the right path."}]
execute at @e[type=villager,tag=npc-stephen, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/stephen/1-end 124t
tag @a remove npc-eavesdropper
