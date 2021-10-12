execute if score _batchleft maze-path matches 0 run scoreboard players operation _batchleft maze-path = batchsize maze-path
# select the cell with the lowest cost
scoreboard players set #MIN maze-pathTcost 2147483647
scoreboard players operation #MIN maze-pathTcost < @e[type=marker,tag=maze-node,tag=path-activated] maze-pathTcost
# visit all the minimum t cost cells
execute as @e[type=marker,tag=maze-node,tag=path-activated] if score @s maze-pathTcost = #MIN maze-pathTcost at @s run function generated:story/maze/pathfind/visitcell
execute if score _batchleft maze-path matches 1.. unless entity @e[type=marker,tag=maze-node,tag=path-goal,tag=path-activated] run function generated:story/maze/pathfind/selectcell
execute if score _batchleft maze-path matches 0 unless entity @e[type=marker,tag=maze-node,tag=path-goal,tag=path-activated] run schedule function generated:story/maze/pathfind/selectcell 1t
scoreboard players remove _batchleft maze-path 1
# Finalize path after finishing
execute if entity @e[type=marker,tag=maze-node,tag=path-goal,tag=path-activated] run function generated:story/maze/pathfind/finalizepath
