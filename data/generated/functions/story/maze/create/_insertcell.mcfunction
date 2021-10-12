#> Insert adjacent cell into maze
tag @s remove maze-adjacent
function generated:story/maze/neighbors
# Add neighbors to adjacent list
tag @e[type=marker,tag=maze-node,tag=maze-neighbor,tag=!maze-visited] add maze-adjacent
# Select random node in maze to connect to from neighbors
tag @e[type=marker,tag=maze-node,tag=maze-neighbor,tag=maze-visited,sort=random,limit=1] add maze-connect
execute as @s run function generated:story/maze/create/_deletewall
# add self to maze
tag @s remove maze-adjacent
tag @s add maze-visited
