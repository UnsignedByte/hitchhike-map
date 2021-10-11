scoreboard players operation _z maze = size maze

execute as @s at @s run function generated:story/maze/create/_z
scoreboard players remove _y maze 1
tp @s ~ ~8 0
execute unless score _y maze matches 0 as @s at @s run function generated:story/maze/create/_y
