scoreboard players set _rngm vars 1
function generated:rng/rng
execute if score rng vars matches 0 run summon zombie ~ ~ ~ {NoGravity:0b,Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:0b,Health:10f,IsBaby:1b,Tags:["maze-common","maze-mob","maze-mob-null"],CustomName:'{"text":"nullptr","color":"red","bold":true}',ArmorItems:[{},{},{},{id:'minecraft:barrier',Count:1b}],Attributes:[{Name:generic.max_health,Base:10},{Name:generic.follow_range,Base:16},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:4}]}
