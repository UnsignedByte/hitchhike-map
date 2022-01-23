tag @a[tag=victim-of-dialogue-by-levirosman, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-levirosman, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-levirosman, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Levi Rosman","color":"#f0534d","bold":true},"> ",{"text":"Can't you see I'm engaged in an intense game of boardless chess?"}]
execute at @e[type=villager,tag=npc-levirosman, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/levirosman/0-2 126t
tag @a remove npc-eavesdropper
