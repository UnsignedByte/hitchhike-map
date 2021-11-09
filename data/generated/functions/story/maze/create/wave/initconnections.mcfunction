scoreboard players set @s maze-connections 0
execute if block ~5 ~0 ~0 lime_stained_glass run scoreboard players operation @s maze-connections += 1 const
execute if block ~0 ~5 ~0 lime_stained_glass run scoreboard players operation @s maze-connections += 2 const
execute if block ~0 ~0 ~5 lime_stained_glass run scoreboard players operation @s maze-connections += 4 const
execute if block ~0 ~0 ~-5 lime_stained_glass run scoreboard players operation @s maze-connections += 8 const
execute if block ~0 ~-5 ~0 lime_stained_glass run scoreboard players operation @s maze-connections += 16 const
execute if block ~-5 ~0 ~0 lime_stained_glass run scoreboard players operation @s maze-connections += 32 const
