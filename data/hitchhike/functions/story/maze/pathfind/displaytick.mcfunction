# Tick for a display marker

execute as @s at @e[tag=maze-node,scores={maze-path=0..},distance=..0.1,limit=1] run function hitchhike:story/maze/pathfind/displaynext

execute at @s run tp @s ^ ^ ^1

particle dust 0 1 0 3 ~ ~ ~ 0 0 0 0 1 force