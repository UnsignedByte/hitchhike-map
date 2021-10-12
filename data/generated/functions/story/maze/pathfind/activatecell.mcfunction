scoreboard players operation @s maze-path-parent = _tmp maze-path-parent
execute as @s run function generated:story/maze/pathfind/updatecost
tag @s add path-activated
