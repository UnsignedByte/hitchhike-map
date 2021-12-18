scoreboard players set _rngm vars 2
function generated:rng/rng
execute if score rng vars matches 0 run summon pillager ~ ~ ~ {Tags:["maze-mob"],CustomName:'{"text":"free(void* ptr)","color":"red","bold":true}',HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
execute if score rng vars matches 1 run summon vindicator ~ ~ ~ {Tags:["maze-mob"],CustomName:'{"text":"operator delete (void* ptr)","color":"red","bold":true}',HandItems:[{id:"minecraft:iron_axe",Count:1b},{}]}
