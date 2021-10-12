execute as @e[type=marker,tag=maze-marker] run function generated:story/maze/create/getpos
tag @e[type=marker,tag=maze-marker] remove maze-visited
