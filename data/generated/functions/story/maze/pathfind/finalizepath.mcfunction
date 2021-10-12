#> Reverse the path to get from start to goal
# First, clear the scoreboard
scoreboard objectives reset @e[tag=maze-node] maze-path
scoreboard players set length maze-path 0
execute as @e[type=marker,tag=maze-node,tag=path-goal] run function generated:story/maze/pathfind/_pathgetnext
