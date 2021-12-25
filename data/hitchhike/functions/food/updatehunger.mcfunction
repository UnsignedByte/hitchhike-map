execute store result score @s foodLevel run data get entity @s foodLevel 1
execute store result score @s saturationLevel run data get entity @s foodSaturationLevel 1
scoreboard players operation @s foodTotal = @s foodLevel
scoreboard players operation @s foodTotal += @s saturationLevel

# If we have a hunger goal, normalize the hunger toward it
execute if entity @s[scores={foodGoal=0..}] run function hitchhike:food/normalizehunger