tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-simon, limit=1] run tag @a add npc-eavesdropper
# Dialogue line #2-15: speak and make noise.
execute at @e[type=villager,tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#6bdfc3","bold":true},"> ",{"text":"Take that card and get it fixed. Once you get the map in your hands you can go right on up the mountain."}]
execute at @e[type=villager,tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
scoreboard players set -sdcard story-simon 0
function generated:quests/sdcard-start
give @a[tag=victim-of-dialogue-by-simon, limit=1] minecraft:daylight_detector{display: {Name: '{"text":"SD Card (Corrupted)","color":"#d6679f","bold":true}', Lore: ['{"text":"A corrupted SD Card","color":"blue"}', '{"text":"What secrets might","color":"gray"}', '{"text":"it hold inside?","color":"gray"}']}, Enchantments: [{}]} 1
schedule function generated:npc/simon/2-15 128t
tag @a remove npc-eavesdropper
