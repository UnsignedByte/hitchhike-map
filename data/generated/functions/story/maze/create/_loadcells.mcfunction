# Clone in random cells
execute unless entity @e[type=marker,tag=maze-node,tag=maze-visited] run scoreboard players set _batchleft maze 0
execute as @e[type=marker,tag=maze-node,tag=maze-visited,sort=random,limit=1] at @s run function generated:story/maze/create/_loadcell
scoreboard players remove _batchleft maze 1
execute unless score _batchleft maze matches ..0 run function generated:story/maze/create/_loadcells
