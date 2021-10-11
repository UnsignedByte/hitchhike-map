scoreboard players operation _y maze = size maze

execute as @e[type=marker,tag=maze-marker,tag=maze-create-root] at @s run function generated:story/maze/create/_y
scoreboard players remove _x maze 1
execute as @e[type=marker,tag=maze-marker,tag=maze-create-root] at @s run tp ~8 4 0
execute unless score _x maze matches 0 run schedule function generated:story/maze/create/_x 1t
execute if score _x maze matches 0 run function generated:story/maze/create/_generatepaths
