tag @a[tag=victim-of-dialogue-by-ekaterina, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-ekaterina, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-ekaterina, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Ekaterina Zubov","color":"#9d86a6","bold":true},"> ",{"text":"Being offline makes it difficult to work."}]
execute at @e[type=villager,tag=npc-ekaterina, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/ekaterina/0-end 78t
tag @a remove npc-eavesdropper
