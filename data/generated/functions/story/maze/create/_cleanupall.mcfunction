execute as @e[type=marker,tag=maze-node] run function generated:story/maze/create/getpos
tag @e[type=marker,tag=maze-node] remove maze-visited
bossbar set minecraft:maze visible false
scoreboard players set enabled maze 1
