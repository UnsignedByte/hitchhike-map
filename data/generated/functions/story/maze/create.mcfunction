# Reset maze
kill @e[tag=maze-marker]
# Set Size of maze
scoreboard players set size maze 15
summon marker -1500 4 0 {Tags:["maze-marker","maze-create-root"]}

scoreboard players operation _x maze = size maze
execute as @e[type=marker,tag=maze-marker,tag=maze-create-root] at @s run function generated:story/maze/create/_x
kill @e[type=marker,tag=maze-marker,tag=maze-create-root]
