weather rain 1000000
time set 23000
# weather clear 1000000
# time set noon
gamerule doDaylightCycle false
gamerule playersSleepingPercentage 200
gamerule doLimitedCrafting true
# gamerule sendCommandFeedback false
stopsound @a
recipe take @a *

forceload remove all
# spawn
forceload add -26 -11 -123 86
# most of map
forceload add 1103 -256 745 -91
forceload add 1103 -75 747 93
# wendys
forceload add 790 94 813 120
# Simons house
forceload add 961 162 891 215
# Hurm trees
forceload add 1166 273 1192 302
# hurm mine
forceload add 1236 317 1251 321
# hurm house
forceload add 1082 343 1068 359
# lake
forceload add 1196 361 763 483

# Maze
forceload add -1504 -2 -1371 129
# lobby
forceload add -1378 -104 -1420 -196

function generated:reset

function hitchhike:story/reset

function hitchhike:car/reset

function hitchhike:thrownitem/reset

scoreboard players set @a foodGoal 41



kill @e[tag=falling-block-display]
# Printer in simons house
summon falling_block 964.5 75 197.5 {BlockState:{Name:"minecraft:smooth_stone_slab",Properties:{type:"bottom"}},NoGravity:1b,Silent:1b,Time:1,Tags:["falling-block-display"]}
summon area_effect_cloud 964.5 74.125 197.5 {NoGravity:1b,Duration:2147483647,Tags:["falling-block-display","aec"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:0b,Tags:["falling-block-display","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}]}

# Fountain
summon area_effect_cloud 896.5 61.625 -59.5 {NoGravity:1b,Duration:2147483647,Tags:["falling-block-display","aec"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:white_concrete"},NoGravity:1b,Silent:1b,Time:1,Tags:["falling-block-display"]}]}
summon area_effect_cloud 896.5 61.625 -60.5 {NoGravity:1b,Duration:2147483647,Tags:["falling-block-display","aec"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:white_concrete"},NoGravity:1b,Silent:1b,Time:1,Tags:["falling-block-display"]}]}
summon area_effect_cloud 894.5 61.625 -59.5 {NoGravity:1b,Duration:2147483647,Tags:["falling-block-display","aec"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:white_concrete"},NoGravity:1b,Silent:1b,Time:1,Tags:["falling-block-display"]}]}
summon area_effect_cloud 894.5 61.625 -60.5 {NoGravity:1b,Duration:2147483647,Tags:["falling-block-display","aec"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:white_concrete"},NoGravity:1b,Silent:1b,Time:1,Tags:["falling-block-display"]}]}
summon area_effect_cloud 914.5 48.625 -72.5 {NoGravity:1b,Duration:2147483647,Tags:["falling-block-display","aec"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Silent:1b,Time:1,Tags:["falling-block-display"]}]}
summon area_effect_cloud 914.5 48.625 -84.5 {NoGravity:1b,Duration:2147483647,Tags:["falling-block-display","aec"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Silent:1b,Time:1,Tags:["falling-block-display"]}]}

# Dead Skeletons
kill @e[tag=dead-skeleton]
summon area_effect_cloud 802.7 63.625 95.3 {Duration:2147483647,Tags:["aec","dead-skeleton"],Passengers:[{id:"minecraft:skeleton",Silent:1b,Invulnerable:1b,NoAI:1b,Rotation:[40F,-30F],Tags:["dead-skeleton"]}]}