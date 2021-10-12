#> Reverse the path to get from start to goal
# First, clear the scoreboard
scoreboard objectives remove maze-path
scoreboard objectives add maze-path
scoreboard players set length maze-path 0
execute as @e[type=marker,tag=maze-marker,tag=path-goal] run function generated:story/maze/pathfind/_getpathnext
