scoreboard players set _rngm vars 3
function generated:rng/rng
execute if score rng vars matches 0 run summon wither_skeleton ~ ~ ~ {Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:0b,Health:60f,Tags:["maze-rare","maze-mob","maze-mob-ip"],CustomName:'{"text":"8.8.8.8","color":"dark_red","bold":true}',HandItems:[{id:'minecraft:cookie',Count:1b,tag:{Enchantments:[{id:'minecraft:sharpness',lvl:5s},{id:'minecraft:knockback',lvl:1s}]}},{id:'minecraft:cookie',Count:1b,tag:{Enchantments:[{id:'minecraft:sharpness',lvl:5s},{id:'minecraft:knockback',lvl:1s}]}}],ArmorItems:[{},{},{},{id:'minecraft:tinted_glass',Count:1b}],Attributes:[{Name:generic.max_health,Base:60},{Name:generic.follow_range,Base:32},{Name:generic.knockback_resistance,Base:0.8},{Name:generic.movement_speed,Base:0.15},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:20}]}
execute if score rng vars matches 1 run summon vindicator ~ ~ ~ {Silent:1b,LeftHanded:1b,Health:80f,DeathLootTable:"minecraft:empty",Tags:["maze-mob-johnny","maze-mob","maze-rare"],CustomName:'{"text":"Johnny\'); DROP ANVIL Entities;--","color":"dark_red","bold":true}',HandItems:[{id:"minecraft:anvil",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_trapdoor",Count:1b}],Attributes:[{Name:generic.max_health,Base:80},{Name:generic.follow_range,Base:20},{Name:generic.knockback_resistance,Base:0.8},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:5},{Name:generic.attack_knockback,Base:1}]}
execute if score rng vars matches 2 run summon phantom ~ ~ ~ {Silent:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:20f,Size:4,Tags:["maze-mob","maze-rare","maze-mob-stack"],Passengers:[{id:"minecraft:phantom",Silent:1b,CanPickUpLoot:0b,Health:15f,Size:3,Tags:["maze-mob","maze-rare","maze-mob-stack"],Passengers:[{id:"minecraft:phantom",Silent:1b,CanPickUpLoot:0b,Health:10f,Size:2,Tags:["maze-mob","maze-rare","maze-mob-stack"],Passengers:[{id:"minecraft:phantom",Silent:1b,CanPickUpLoot:0b,Health:5f,Size:1,Tags:["maze-mob","maze-rare","maze-mob-stack"],Passengers:[{id:"minecraft:phantom",Silent:1b,CanPickUpLoot:0b,Health:5f,Size:0,Tags:["maze-mob","maze-rare","maze-mob-stack"],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:5},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:5},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:10},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:15},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}],CustomName:'{"text":"Stack","color":"dark_red","bold":true}',Attributes:[{Name:generic.max_health,Base:20},{Name:generic.follow_range,Base:16},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}]}
