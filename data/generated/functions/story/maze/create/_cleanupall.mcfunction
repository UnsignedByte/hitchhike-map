execute as @e[type=marker,tag=maze-node] run function generated:story/maze/create/getpos
bossbar set minecraft:maze visible false
function generated:story/maze/unloadchunks
execute if score enabled maze matches 0 run function hitchhike:story/sawyer/maze/ready
