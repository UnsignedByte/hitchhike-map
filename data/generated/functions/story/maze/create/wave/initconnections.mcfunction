scoreboard players set @s maze-connections 1
execute if block ~5 ~0 ~0 lime_stained_glass run scoreboard players operation @s maze-connections *= 2 const
execute if block ~0 ~5 ~0 lime_stained_glass run scoreboard players operation @s maze-connections *= 3 const
execute if block ~0 ~0 ~5 lime_stained_glass run scoreboard players operation @s maze-connections *= 5 const
execute if block ~0 ~0 ~-5 lime_stained_glass run scoreboard players operation @s maze-connections *= 7 const
execute if block ~0 ~-5 ~0 lime_stained_glass run scoreboard players operation @s maze-connections *= 11 const
execute if block ~-5 ~0 ~0 lime_stained_glass run scoreboard players operation @s maze-connections *= 13 const