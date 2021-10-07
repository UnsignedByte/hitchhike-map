# Dialogue line #2-15: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Take that card and get it fixed up, and once you get the map in your hands you can go right on up the mountain."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-simon, limit=1] minecraft:daylight_detector{display: {Name: '{"text":"SD Card (Corrupted)","color":"#d6679f","bold":true}', Lore: ['{"text":"A corrupted SD Card","color":"blue"}', '{"text":"What secrets might","color":"gray"}', '{"text":"it hold inside?","color":"gray"}']}, Enchantments: [{}]} 1
schedule function generated:npc/simon/2-15 204t
