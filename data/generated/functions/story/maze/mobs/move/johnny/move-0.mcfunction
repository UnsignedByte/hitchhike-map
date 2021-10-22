execute as @s run function hitchhike:storerot
scoreboard players operation #rotX vars /= 3 const
scoreboard players operation #rotY vars /= 2 const
scoreboard players operation #rotZ vars /= 3 const
execute at @s positioned ~ ~2 ~ run function hitchhike:story/maze/mobs/johnny/anvil
