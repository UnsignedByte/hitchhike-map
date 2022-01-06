tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[tag=npc-sawyer, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #3-6: speak and make noise.
execute at @e[tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"I'll take a look at it."}]
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
clear @a minecraft:daylight_detector{display: {Name: '{"text":"SD Card (Corrupted)","color":"#d6679f","bold":true}', Lore: ['{"text":"A corrupted SD Card","color":"blue"}', '{"text":"What secrets might","color":"gray"}', '{"text":"it hold inside?","color":"gray"}']}, Enchantments: [{}]} 2147483647
data modify entity @e[tag=npc-sawyer, limit=1] HandItems[0] set value {Count: 1b, id: "minecraft:daylight_detector", tag: {display: {Name: '{"text":"SD Card (Corrupted)","color":"#d6679f","bold":true}', Lore: ['{"text":"A corrupted SD Card","color":"blue"}', '{"text":"What secrets might","color":"gray"}', '{"text":"it hold inside?","color":"gray"}']}, Enchantments: [{}]}}
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.item.pickup neutral @a ~ ~ ~ 1 1
schedule function generated:npc/sawyer/3-06 48t
tag @a remove npc-eavesdropper
