execute as @e[type=marker,tag=maze-node] run function generated:story/maze/create/getpos
tag @e[type=marker,tag=maze-node] remove maze-visited
