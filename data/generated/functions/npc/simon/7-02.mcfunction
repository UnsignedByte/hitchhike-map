tag @a[tag=victim-of-dialogue-by-simon, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-simon, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #7-3: speak and make noise.
execute at @e[type=villager,tag=npc-simon, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Simon Ursus Stephens","color":"#6bdfc3","bold":true},"> ",{"text":"Anyways, let me take that away from you before you break it."}]
execute at @e[type=villager,tag=npc-simon, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
clear @a daylight_detector{sdcardfixed:1b}
data modify entity @e[type=villager,tag=npc-simon, limit=1] HandItems[0] set value {Count: 1b, id: "minecraft:daylight_detector", tag: {display: {Name: '{"text":"SD Card (Fixed)","color":"#d6679f","bold":true}', Lore: ['{"text":"An SD Card.","color":"blue"}']}, sdcardfixed: 1b, HideFlags: 127, Enchantments: [{id:"minecraft:unbreaking",lvl:1s}]}}
execute at @e[type=villager,tag=npc-simon, limit=1] run playsound minecraft:entity.item.pickup neutral @a ~ ~ ~ 1 1
schedule function generated:npc/simon/7-03 80t
tag @a remove npc-eavesdropper
