tag @a[tag=victim-of-dialogue-by-icecream, limit=1] add npc-eavesdropper
execute at @e[tag=npc-icecream, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-3: speak and make noise.
execute at @e[tag=npc-icecream, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Luke Toser","color":"#a2f092","bold":true},"> ",{"text":"We hope to see you another day!"}]
execute at @e[tag=npc-icecream, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/icecream/0-end 72t
tag @a remove npc-eavesdropper
