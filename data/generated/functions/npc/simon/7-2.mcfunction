tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[tag=npc-simon, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #7-3: speak and make noise.
execute at @e[tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#85deb1","bold":true},"> ",{"text":"Anyways, let me take that away from you before you break it."}]
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
clear @a minecraft:daylight_detector{display: {Name: '{"text":"SD Card (Fixed)","color":"#d6679f","bold":true}', Lore: ['{"text":"An SD Card.","color":"blue"}']}, Enchantments: [{}]} 2147483647
data modify entity @e[tag=npc-simon, limit=1] HandItems[0] set value {Count: 1b, id: "minecraft:daylight_detector", tag: {display: {Name: '{"text":"SD Card (Fixed)","color":"#d6679f","bold":true}', Lore: ['{"text":"An SD Card.","color":"blue"}']}, Enchantments: [{}]}}
execute at @e[tag=npc-simon, limit=1] run playsound minecraft:entity.item.pickup neutral @a ~ ~ ~ 1 1
schedule function generated:npc/simon/7-3 120t
tag @a remove npc-eavesdropper
