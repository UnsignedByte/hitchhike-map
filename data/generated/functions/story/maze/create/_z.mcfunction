summon marker ~ ~ ~ {Tags:["maze-marker","maze-node"]}
forceload add ~-4 ~-4 ~4 ~4
fill ~-4 ~-4 ~-4 ~5 ~5 ~5 air
scoreboard players remove _z maze 1
tp @s ~ ~ ~9
execute unless score _z maze matches 0 as @s at @s run function generated:story/maze/create/_z
