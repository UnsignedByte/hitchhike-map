# We finished building the maze, kill the root
kill @e[type=marker,tag=maze-marker,tag=maze-create-root]
# Start node of the maze
tag @e[type=marker,tag=maze-node,sort=random,limit=1] add maze-start
tag @e[type=marker,tag=maze-node,tag=maze-start] add maze-visited
execute at @e[type=marker,tag=maze-node,tag=maze-start] run function generated:story/maze/neighbors
tag @e[type=marker,tag=maze-node,tag=maze-neighbor] add maze-adjacent

# Set up bossbar
bossbar set minecraft:maze name [{"text":"Preparing New Memory"}]
bossbar set minecraft:maze color green
scoreboard players operation bossbar maze = size maze
execute store result bossbar minecraft:maze max run scoreboard players get bossbar maze
bossbar set minecraft:maze players @a
bossbar set minecraft:maze visible true
bossbar set minecraft:maze style progress
bossbar set minecraft:maze value 0
scoreboard players set bossbar maze 0

#> Start propogation
#> Propogate in batches
# size^2
scoreboard players operation batchsize maze = size maze
scoreboard players operation batchsize maze *= size maze
function generated:story/maze/create/_propogatebatch
function generated:story/maze/create/_propogate
