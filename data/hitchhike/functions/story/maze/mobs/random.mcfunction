# generate random number from 0 to 100
scoreboard players set _rngm vars 100
function generated:rng/rng

execute if score rng vars matches 0 run function generated:story/maze/mobs/summon/boss
execute if score rng vars matches 1..10 run function generated:story/maze/mobs/summon/rare
execute if score rng vars matches 11..99 run function generated:story/maze/mobs/summon/common