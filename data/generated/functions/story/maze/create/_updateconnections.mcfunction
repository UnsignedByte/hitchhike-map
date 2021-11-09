scoreboard players set @s maze-connections 0
execute if entity @s[tag=maze-connect-0] run scoreboard players add @s maze-connections 1
execute if entity @s[tag=maze-connect-1] run scoreboard players add @s maze-connections 2
execute if entity @s[tag=maze-connect-2] run scoreboard players add @s maze-connections 4
execute if entity @s[tag=maze-connect-3] run scoreboard players add @s maze-connections 8
execute if entity @s[tag=maze-connect-4] run scoreboard players add @s maze-connections 16
execute if entity @s[tag=maze-connect-5] run scoreboard players add @s maze-connections 32
