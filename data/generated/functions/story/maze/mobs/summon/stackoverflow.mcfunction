scoreboard players set _rngm vars 1
function generated:rng/rng
execute if score rng vars matches 0 run summon phantom ~ ~ ~ {DeathLootTable:"minecraft:empty",Health:5f,Size:0,Tags:["maze-mob","maze-mob-stackoverflow"],CustomName:'{"text":"StackOverflow","color":"red"}',Attributes:[{Name:generic.max_health,Base:5},{Name:generic.follow_range,Base:16},{Name:generic.attack_damage,Base:2}]}
