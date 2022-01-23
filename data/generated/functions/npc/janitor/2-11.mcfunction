tag @a[tag=victim-of-dialogue-by-janitor, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-janitor, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #2-12: speak and make noise.
execute at @e[type=villager,tag=npc-janitor, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Ivan Cummings","color":"#f2d811","bold":true},"> ",{"text":"Well, don't dawdle any longer! Stop wasting my time and get on with it!"}]
execute at @e[type=villager,tag=npc-janitor, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
summon item 898.7 70 21.4 {Tags:["biolab-backpack"],Age:-32768,Item:{id:"minecraft:bundle",Count:1b,tag:{display:{Name:'{"text":"Chris\'s Backpack","color":"aqua"}'},Items:[{Count: 1b, id: "minecraft:stone_button", tag: {display: {Name: '{"text":"Logitech® M585 Multi-Device Wireless Mouse with Flow Tech","color":"light_gray"}', Lore: ['{"text":"Compact mouse with extra controls","color":"gray"}']}}}]}}}
give @a[tag=victim-of-dialogue-by-janitor, limit=1] minecraft:iron_shovel{display: {Name: '{"text":"Shovel","color":"gray"}', Lore: ['{"text":"Literally just a shovel.","color":"dark_gray"}']}, sawyershovel: 1b, Unbreakable: 1b, HideFlags: 127} 1
schedule function generated:npc/janitor/2-12 102t
tag @a remove npc-eavesdropper
