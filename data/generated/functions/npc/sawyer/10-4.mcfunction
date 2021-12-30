tag @a[tag=victim-of-dialogue-by-sawyer, limit=1] add npc-eavesdropper
execute at @e[tag=npc-sawyer, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #10-5: speak and make noise.
execute at @e[tag=npc-sawyer, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"Alright, there you go. No need to thank me, you did most of the work, after all."}]
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
give @a[tag=victim-of-dialogue-by-sawyer, limit=1] minecraft:daylight_detector{display: {Name: '{"text":"SD Card (Fixed)","color":"#d6679f","bold":true}', Lore: ['{"text":"An SD Card.","color":"blue"}']}, Enchantments: [{}]} 1
scoreboard players set -sdcard story-simon 1
schedule function generated:npc/sawyer/10-5 138t
tag @a remove npc-eavesdropper
