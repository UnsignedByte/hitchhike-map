summon firework_rocket -1403 12.5 -158 {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;16777215]}]}}}}
summon item -1403 12.5 -158 {PickupDelay:32767,Age:-32768,Tags:["maze-weapon-displaystand"],Item:{Count: 1b, posX: -1403, posZ: -158, id: 'minecraft:blaze_powder', tag: {weapon: 'firewall', isweapon: 1b, display: {Name: '{"text":"Firewall","color":"aqua","bold":true}', Lore: ['{"text":"The Great...","color":"#D65831"}','{"text":"Keeps out malicious","color":"gray"}','{"text":"enemies.","color":"gray"}']}, HideFlags: 7, Enchantments: [{id:"minecraft:fire_aspect",lvl:10s}], AttributeModifiers: [{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;243472706,-1489090135,-1530016463,-1848963892],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;245692403,1821067351,-1410396933,1710264550],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.5,Operation:1,UUID:[I;-130300453,1611024656,-1322539582,-1366430667]}]}}}
playsound minecraft:entity.experience_orb.pickup neutral @a -1403 12.5 -158 1 0.6
schedule function generated:story/maze/weapons/spawnseq/3 40t
