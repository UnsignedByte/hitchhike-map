execute as @s at @s run function hitchhike:hitdetect/detect
execute if entity @s[nbt={SelectedItem:{id: 'minecraft:iron_shovel', tag: {weapon: 'spoon', isweapon: 1b, display: {Name: '{"text":"Digitally Enlarged Spoon","color":"aqua","bold":true}', Lore: ['{"text":"Soup is a problem of the past!","color":"blue"}', '{"text":"Worry not, for this weapon\'s","color":"blue"}', '{"text":"Immense surface area will be","color":"blue"}', '{"text":"sure to satisfy.","color":"blue"}']}, HideFlags: 7, Unbreakable: 1b, Enchantments: [{id:"minecraft:knockback",lvl:3s}], AttributeModifiers: [{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.2,Operation:1,UUID:[I;172020825,1243695863,-1688953862,1194535858],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;-1466535011,1435910226,-1878562663,-1132015729],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.8,Operation:1,UUID:[I;-922863640,36653646,-1341164666,1599461106],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:1,UUID:[I;-139520492,-1183036538,-1607351058,1989334895],Slot:"mainhand"}]}}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/spoon/onhit
execute if entity @s[nbt={SelectedItem:{id: 'minecraft:white_banner', tag: {weapon: 'frenchflag', isweapon: 1b, display: {Name: '{"text":"French Flag","color":"aqua","bold":true}', Lore: ['{"text":"Use this, and nobody would","color":"blue"}', '{"text":"dare fight you anymore.","color":"blue"}']}, HideFlags: 7, Enchantments: [{id:"minecraft:knockback",lvl:10s}], AttributeModifiers: [{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:2,UUID:[I;1383535789,-2064168012,-1710632262,864343479],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1000,Operation:2,UUID:[I;1404153545,785992977,-1535149632,1770570515],Slot:"mainhand"}]}}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/frenchflag/onhit
execute if entity @s[nbt={SelectedItem:{id: 'minecraft:command_block', tag: {weapon: 'commandblock', isweapon: 1b, display: {Name: '{"text":"Command Block","color":"aqua","bold":true}', Lore: ['{"text":"Now if only you were","color":"blue"}', '{"text":"in creative mode...","color":"blue"}']}, HideFlags: 7, Enchantments: [{}], AttributeModifiers: [{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1000,Operation:2,UUID:[I;-236452543,409881411,-1774864685,1481938920],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:1,UUID:[I;-1658005475,239224106,-1186363263,-590591408],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;1355955642,-1776204605,-1097579002,-1040650905],Slot:"mainhand"}]}}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/commandblock/onhit
execute if entity @s[nbt={SelectedItem:{id: 'minecraft:barrier', tag: {weapon: 'buildtool', isweapon: 1b, display: {Name: '{"text":"Build Tool","color":"light_purple","bold":true}', Lore: ['{"text":"Infinite Possibilities","color":"blue"}']}, HideFlags: 7, Enchantments: [{}], AttributeModifiers: [{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-1,Operation:1,UUID:[I;-339360344,2031963198,-1834550935,770994111],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-1,Operation:1,UUID:[I;-948468744,-933934091,-1747102494,-1736394265],Slot:"offhand"}]}}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/buildtool/onhit
