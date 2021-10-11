# Reset maze
execute as @e[tag=maze-marker] at @s run forceload remove ~-4 ~-4 ~4 ~4
kill @e[tag=maze-marker]
# Set Size of maze
scoreboard players set size maze 15
summon marker -1500 4 0 {Tags:["maze-marker","maze-create-root"]}

scoreboard players operation _x maze = size maze
function generated:story/maze/create/_x
