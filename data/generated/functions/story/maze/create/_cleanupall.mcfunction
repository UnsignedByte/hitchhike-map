execute as @e[type=marker,tag=maze-node] run function generated:story/maze/create/getpos
bossbar set minecraft:maze visible false
scoreboard players set enabled maze 1
function hitchhike:story/sawyer/maze/ready
