summon marker ~ ~ ~ {Tags:["maze-marker","maze-node"]}
clone -1003 47 -3 -997 53 3 ~-3 ~-3 ~-3
scoreboard players remove _z maze 1
tp @s ~ ~ ~5
execute unless score _z maze matches 0 as @s at @s run function generated:story/maze/create/_z
