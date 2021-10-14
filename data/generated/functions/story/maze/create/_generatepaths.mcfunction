# We finished building the maze, kill the root
kill @e[type=marker,tag=maze-marker,tag=maze-create-root]
# Start node of the maze
tag @e[type=marker,tag=maze-node,sort=random,limit=1] add maze-start
tag @e[type=marker,tag=maze-node,tag=maze-start] add maze-visited
execute at @e[type=marker,tag=maze-node,tag=maze-start] run function generated:story/maze/neighbors
tag @e[type=marker,tag=maze-node,tag=maze-neighbor] add maze-adjacent

#> Start propogation
#> Propogate in batches
# size^2
scoreboard players set batchsize maze 50
function generated:story/maze/create/_propogatebatch
function generated:story/maze/create/_propogate
