# Use Prim's modified maze generation algorithm
execute unless entity @e[type=marker,tag=maze-node,tag=maze-adjacent] run scoreboard players set _batchleft maze 0
execute as @e[type=marker,tag=maze-node,tag=maze-adjacent,sort=random,limit=1] at @s run function generated:story/maze/create/_insertcell
scoreboard players remove _batchleft maze 1
execute unless score _batchleft maze matches ..0 run function generated:story/maze/create/_propogate
