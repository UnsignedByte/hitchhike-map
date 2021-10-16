scoreboard players operation _y maze = size maze
scoreboard players add bossbar maze 1
execute store result bossbar minecraft:maze value run scoreboard players get bossbar maze

execute as @e[type=marker,tag=maze-marker,tag=maze-create-root] at @s run function generated:story/maze/create/_y
scoreboard players remove _x maze 1
execute as @e[type=marker,tag=maze-marker,tag=maze-create-root] at @s run tp ~9 4 0
execute unless score _x maze matches 0 run schedule function generated:story/maze/create/_x 1t
execute if score _x maze matches 0 run function generated:story/maze/create/_generatepaths
