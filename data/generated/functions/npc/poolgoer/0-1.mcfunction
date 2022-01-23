tag @a[tag=victim-of-dialogue-by-poolgoer, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-poolgoer, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-poolgoer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Bucky Cradle","color":"#9c231a","bold":true},"> ",{"text":"I was gonna get my friend Lucky up here too but he's too chicken with heights."}]
execute at @e[type=villager,tag=npc-poolgoer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/poolgoer/0-2 132t
tag @a remove npc-eavesdropper
