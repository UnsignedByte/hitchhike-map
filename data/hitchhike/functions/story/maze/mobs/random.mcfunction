# generate random number from 0 to 100
scoreboard players set _rngm vars 100
function generated:rng/rng

execute if score rng vars matches 0 run function hitchhike:story/maze/mobs/boss
execute if score rng vars matches 1..10 run function hitchhike:story/maze/mobs/rare
execute if score rng vars matches 11..99 run function hitchhike:story/maze/mobs/common