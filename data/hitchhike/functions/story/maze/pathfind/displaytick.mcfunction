# Tick for a display marker

execute as @e at @e[tag=maze-node,scores={maze-path=0..},distance=..1,limit=1] run function hitchhike:story/maze/pathfind/displaynext

tp @s ^ ^ ^0.5

particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force