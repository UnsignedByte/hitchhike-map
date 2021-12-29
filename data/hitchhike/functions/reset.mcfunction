weather rain 1000000
time set 23000
# weather clear 1000000
# time set noon
gamerule doDaylightCycle false
gamerule playersSleepingPercentage 200
gamerule doLimitedCrafting true
stopsound @a
recipe take @a *

function generated:reset

function hitchhike:story/reset

function hitchhike:car/reset

function hitchhike:safeway/reset

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