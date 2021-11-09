scoreboard players set @s maze-connections 0
execute if entity @s[tag=maze-connect-0] run scoreboard players operation @s maze-connections += 1 const
execute if entity @s[tag=maze-connect-1] run scoreboard players operation @s maze-connections += 2 const
execute if entity @s[tag=maze-connect-2] run scoreboard players operation @s maze-connections += 4 const
execute if entity @s[tag=maze-connect-3] run scoreboard players operation @s maze-connections += 8 const
execute if entity @s[tag=maze-connect-4] run scoreboard players operation @s maze-connections += 16 const
execute if entity @s[tag=maze-connect-5] run scoreboard players operation @s maze-connections += 32 const
