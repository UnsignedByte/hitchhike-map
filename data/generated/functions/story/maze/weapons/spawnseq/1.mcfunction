summon firework_rocket -1408 12.5 -153 {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;16777215]}]}}}}
summon item -1408 12.5 -153 {PickupDelay:32767,Age:-32768,Tags:["maze-weapon-displaystand"],Item:{Count: 1b, posX: -1408, posZ: -153, id: 'minecraft:command_block', tag: {weapon: 'commandblock', isweapon: 1b, display: {Name: '{"text":"Command Block","color":"aqua","bold":true}', Lore: ['{"text":"Now if only you were","color":"blue"}', '{"text":"in creative mode...","color":"blue"}']}, HideFlags: 7, Enchantments: [{}], AttributeModifiers: [{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1000,Operation:2,UUID:[I;-236452543,409881411,-1774864685,1481938920],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:1,UUID:[I;-1658005475,239224106,-1186363263,-590591408],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;1355955642,-1776204605,-1097579002,-1040650905],Slot:"mainhand"}]}}}
playsound minecraft:entity.experience_orb.pickup neutral @a -1408 12.5 -153 1 0.6
schedule function generated:story/maze/weapons/spawnseq/2 40t
