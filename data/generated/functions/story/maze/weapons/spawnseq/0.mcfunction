summon firework_rocket -1408 12.5 -148 {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;16777215]}]}}}}
summon item -1408 12.5 -148 {PickupDelay:32767,Age:-32768,Tags:["maze-weapon-displaystand"],Item:{Count: 1b, posX: -1408, posZ: -148, id: 'minecraft:redstone_torch', tag: {weapon: 'pointer', isweapon: 1b, display: {Name: '{"text":"std::unique_ptr","color":"aqua","bold":true}', Lore: ['{"text":"Simple and useful.","color":"blue"}','{"text":"Hit mobs to \\"mark\\" them","color":"gray"}','{"text":"Throw the item to blow","color":"gray"}','{"text":"up \\"marked\\" mobs.","color":"gray"}']}, HideFlags: 7, Enchantments: [{}], AttributeModifiers: [{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:1000,Operation:0,UUID:[I;-1052058797,34293322,-1115478998,-133467550]}]}}}
playsound minecraft:entity.experience_orb.pickup neutral @a -1408 12.5 -148 1 0.6
schedule function generated:story/maze/weapons/spawnseq/1 40t
