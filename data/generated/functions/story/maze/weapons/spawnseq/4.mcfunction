summon firework_rocket -1393 12.5 -148 {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Colors:[I;16777215]}]}}}}
summon item -1393 12.5 -148 {PickupDelay:32767,Age:-32768,Tags:["maze-weapon-displaystand"],Item:{Count: 1b, posX: -1393, posZ: -148, id: 'minecraft:dragon_breath', tag: {weapon: 'medicine', isweapon: 1b, display: {Name: '{"text":"Mystery Medicine","color":"aqua","bold":true}', Lore: ['{"text":"(Probably) not addictive.","color":"blue"}']}, HideFlags: 7, Enchantments: [{}], AttributeModifiers: }}}
playsound minecraft:entity.experience_orb.pickup neutral @a -1393 12.5 -148 1 0.6
schedule function generated:story/maze/weapons/spawnseq/5 40t
