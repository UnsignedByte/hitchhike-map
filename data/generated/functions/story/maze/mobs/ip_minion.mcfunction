scoreboard players set _rngm vars 1
function generated:rng/rng
execute if score rng vars matches 0 run summon bee ~ ~ ~ {Silent:1b,Invulnerable:1b,AngerTime:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:area_effect_cloud",CustomNameVisible:1b,Duration:2147483647,Tags:["maze-mob","maze-host"],Passengers:[{id:"minecraft:zombie",Silent:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,Health:2f,IsBaby:1b,Tags:["maze-mob"],ArmorItems:[{},{},{},{id:"minecraft:red_stained_glass",Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2},{Name:generic.attack_damage,Base:2}]}],CustomName:'{"text":"Malicious Packet","color":"red"}'}],ArmorItems:[{},{},{},{id:'minecraft:barrier',Count:1b}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:0}]}
