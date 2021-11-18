# generate random number from 0 to 100
scoreboard players set _rngm vars 100
function generated:rng/rng

# execute if score rng vars matches 0 run function generated:story/maze/mobs/summon/boss
execute if score rng vars matches 0..9 run function generated:story/maze/mobs/summon/rare
execute if score rng vars matches 10..99 run function generated:story/maze/mobs/summon/common