tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-sawyer, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #5-2: speak and make noise.
execute at @e[type=villager,tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"Anyways, thanks for the mouse."}]
execute at @e[type=villager,tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
setblock 949 71 0 stone_button
playsound minecraft:block.stone.place neutral @a 949 71 0 1 2
clear @a minecraft:stone_button{display: {Name: '{"text":"Logitech® M585 Multi-Device Wireless Mouse with Flow Tech","color":"light_gray"}', Lore: ['{"text":"Compact mouse with extra controls","color":"gray"}']}} 2147483647
schedule function generated:npc/sawyer/5-2 120t
tag @a remove npc-eavesdropper
