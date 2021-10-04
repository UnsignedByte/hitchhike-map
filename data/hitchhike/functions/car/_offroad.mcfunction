scoreboard players operation @s car-velX *= -1 const
scoreboard players operation @s car-velZ *= -1 const

execute at @s rotated ~ 0 positioned ^ ^ ^1 positioned ~ ~-1 ~ unless block ~ ~ ~ gray_concrete unless block ~ ~ ~ minecraft:yellow_concrete unless block ~ ~ ~ white_concrete as @s run function hitchhike:car/_offroad