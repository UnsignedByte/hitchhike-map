tag @a[tag=victim-of-dialogue-by-ericrosman, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-ericrosman, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-2: speak and make noise.
execute at @e[type=villager,tag=npc-ericrosman, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Erick Rosman","color":"#f5746e","bold":true},"> ",{"text":"Trying to set up O-O-O#."}]
execute at @e[type=villager,tag=npc-ericrosman, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/ericrosman/0-end 42t
tag @a remove npc-eavesdropper
