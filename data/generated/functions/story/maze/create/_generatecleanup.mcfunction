#> Clean up maze generation and finalize maze
# Remove random walls from the maze to make it imperfect
scoreboard players operation _removeleft maze = size maze
scoreboard players operation _removeleft maze *= size maze
function generated:story/maze/create/removerandomwalls
execute as @e[type=marker,tag=maze-node] run function generated:story/maze/create/getpos
tag @e[type=marker,tag=maze-node] remove maze-visited
