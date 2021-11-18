#> Advance to the next stage of the maze

execute if score maze-stage story-sawyer matches 0 at @e[tag=path-goal,limit=1] run function hitchhike:story/sawyer/maze/stage/1

scoreboard players add maze-stage story-sawyer 1