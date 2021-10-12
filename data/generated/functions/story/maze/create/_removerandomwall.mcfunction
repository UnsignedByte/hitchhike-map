#> Remove a random neighboring wall
function generated:story/maze/neighbors
# Select random node in maze to remove wall between
tag @e[type=marker,tag=maze-node,tag=maze-neighbor,sort=random,limit=1] add maze-connect
execute as @s run function generated:story/maze/create/_deletewall
