tag @s remove thrown-item-marker-init

summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,Tags:["thrown-item","thrown-item-init"],DisabledSlots:4144959,HandItems:[{id:"minecraft:iron_shovel",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{id:'minecraft:air',Count:1b,tag:{MarkerUUID:[]}},{},{},{}]} 

data modify entity @s data.ItemUUID set from entity @e[tag=thrown-item-init,limit=1] UUID

execute as @s run function hitchhike:thrownitem/calculateoffset

tag @e remove thrown-item-init