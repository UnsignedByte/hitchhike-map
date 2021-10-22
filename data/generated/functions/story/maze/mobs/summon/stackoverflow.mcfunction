scoreboard players set _rngm vars 1
function generated:rng/rng
execute if score rng vars matches 0 run summon bee ~ ~ ~ {Silent:1b,DeathLootTable:"minecraft:empty",Health:5f,AngerTime:2147483647,Tags:["maze-mob","maze-mob-stackoverflow"],CustomName:'{"text":"StackOverflow","color":"red"}',Attributes:[{Name:generic.max_health,Base:5},{Name:generic.follow_range,Base:16},{Name:generic.attack_damage,Base:2}]}
