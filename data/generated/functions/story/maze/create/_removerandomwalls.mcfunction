#> Remove n random walls from the maze
execute as @e[type=marker,tag=maze-node,sort=random,limit=1] at @s run function generated:story/maze/create/_removerandomwall
scoreboard players remove _batchleft maze 1
execute unless score _batchleft maze matches 0 run function generated:story/maze/create/_removerandomwalls
