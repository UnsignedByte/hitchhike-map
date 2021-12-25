store result score @s foodLevel run data get entity @s foodLevel 1
store result score @s saturationLevel run data get entity @s foodSaturationLevel 1
run scoreboard players operation @s foodTotal = @s foodLevel
run scoreboard players operation @s foodTotal += @s saturationLevel

# If we have a hunger goal, normalize the hunger toward it
execute as @s[scores={foodGoal=0..}] run function hitchhike:normalizehunger