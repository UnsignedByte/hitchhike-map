summon firework_rocket -1408 12.5 -148 {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;16777215]}]}}}}
summon item -1408 12.5 -148 {PickupDelay:32767,Age:-32768,Tags:["maze-weapon-displaystand"],Item:{Count: 1b, posX: -1408, posZ: -148, id: 'minecraft:iron_shovel', tag: {weapon: 'spoon', isweapon: 1b, display: {Name: '{"text":"Digitally Enlarged Spoon","color":"aqua","bold":true}', Lore: ['{"text":"Soup is a problem of the past!","color":"blue"}', '{"text":"Worry not, for this weapon\'s","color":"blue"}', '{"text":"Immense surface area will be","color":"blue"}', '{"text":"sure to satisfy.","color":"blue"}']}, HideFlags: 7, Unbreakable: 1b, Enchantments: [{id:"minecraft:knockback",lvl:3s}], AttributeModifiers: [{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.2,Operation:1,UUID:[I;172020825,1243695863,-1688953862,1194535858],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:16,Operation:0,UUID:[I;-1466535011,1435910226,-1878562663,-1132015729],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.8,Operation:1,UUID:[I;-922863640,36653646,-1341164666,1599461106],Slot:"mainhand"}]}}}
playsound minecraft:entity.experience_orb.pickup neutral @a -1408 12.5 -148 1 0.6
schedule function generated:story/maze/weapons/spawnseq/1 40t