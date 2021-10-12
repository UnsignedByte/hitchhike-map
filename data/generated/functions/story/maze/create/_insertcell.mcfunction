#> Insert adjacent cell into maze
tag @s remove maze-adjacent
function generated:story/maze/neighbors
# Add neighbors to adjacent list
tag @e[type=marker,tag=maze-marker,tag=maze-neighbor,tag=!maze-visited] add maze-adjacent
# Select random node in maze to connect to from neighbors
tag @e[type=marker,tag=maze-marker,tag=maze-neighbor,tag=maze-visited,sort=random,limit=1] add maze-connect
# Delete wall
execute if entity @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-0] positioned ~4 ~0 ~0 run fill ~0 ~-2 ~-2 ~0 ~2 ~2 air
execute if entity @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-0] run tag @s add maze-connect-0
execute as @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-0] run tag @s add maze-connect-1
execute if entity @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-1] positioned ~-4 ~0 ~0 run fill ~0 ~-2 ~-2 ~0 ~2 ~2 air
execute if entity @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-1] run tag @s add maze-connect-1
execute as @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-1] run tag @s add maze-connect-0
execute if entity @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-2] positioned ~0 ~4 ~0 run fill ~-2 ~0 ~-2 ~2 ~0 ~2 air
execute if entity @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-2] run tag @s add maze-connect-2
execute as @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-2] run tag @s add maze-connect-3
execute if entity @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-3] positioned ~0 ~-4 ~0 run fill ~-2 ~0 ~-2 ~2 ~0 ~2 air
execute if entity @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-3] run tag @s add maze-connect-3
execute as @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-3] run tag @s add maze-connect-2
execute if entity @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-4] positioned ~0 ~0 ~4 run fill ~-2 ~-2 ~0 ~2 ~2 ~0 air
execute if entity @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-4] run tag @s add maze-connect-4
execute as @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-4] run tag @s add maze-connect-5
execute if entity @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-5] positioned ~0 ~0 ~-4 run fill ~-2 ~-2 ~0 ~2 ~2 ~0 air
execute if entity @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-5] run tag @s add maze-connect-5
execute as @e[type=marker,tag=maze-marker,tag=maze-connect,tag=maze-neighbor-5] run tag @s add maze-connect-4
tag @e[type=marker,tag=maze-marker] remove maze-connect
# add self to maze
tag @s remove maze-adjacent
tag @s add maze-visited
