scoreboard players set @s maze-connections 1
execute if entity @s[tag=maze-connect-0] run scoreboard players operation @s maze-connections *= 2 const
execute if entity @s[tag=maze-connect-1] run scoreboard players operation @s maze-connections *= 3 const
execute if entity @s[tag=maze-connect-2] run scoreboard players operation @s maze-connections *= 5 const
execute if entity @s[tag=maze-connect-3] run scoreboard players operation @s maze-connections *= 7 const
execute if entity @s[tag=maze-connect-4] run scoreboard players operation @s maze-connections *= 11 const
execute if entity @s[tag=maze-connect-5] run scoreboard players operation @s maze-connections *= 13 const
