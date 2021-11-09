scoreboard players set @s maze-connections 0
execute if block ~5 ~0 ~0 lime_stained_glass run scoreboard players add @s maze-connections 1
execute if block ~0 ~5 ~0 lime_stained_glass run scoreboard players add @s maze-connections 2
execute if block ~0 ~0 ~5 lime_stained_glass run scoreboard players add @s maze-connections 4
execute if block ~0 ~0 ~-5 lime_stained_glass run scoreboard players add @s maze-connections 8
execute if block ~0 ~-5 ~0 lime_stained_glass run scoreboard players add @s maze-connections 16
execute if block ~-5 ~0 ~0 lime_stained_glass run scoreboard players add @s maze-connections 32
