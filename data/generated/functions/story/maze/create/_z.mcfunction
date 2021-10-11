summon marker ~ ~ ~ {Tags:["maze-marker","maze-node"]}
clone -1004 46 -4 -996 54 4 ~-4 ~-4 ~-4
scoreboard players remove _z maze 1
tp @s ~ ~ ~8
execute unless score _z maze matches 0 as @s at @s run function generated:story/maze/create/_z
