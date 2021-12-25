execute as @a store result score @s foodLevel run data get entity @s foodLevel 1000
execute as @a store result score @s saturationLevel run data get entity @s foodSaturationLevel 1000
execute as @a run scoreboard players operation @s foodTotal = @s foodLevel
execute as @a run scoreboard players operation @s foodTotal += @s saturationLevel