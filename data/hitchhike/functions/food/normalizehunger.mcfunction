#> Normalize the players' hunger toward a value
effect clear @s saturation
effect clear @s hunger
execute if score @s foodTotal < @s foodGoal run effect give @s saturation 20 0 true
execute if score @s foodTotal > @s foodGoal run effect give @s hunger 1 255 true
execute if score @s foodTotal = @s foodGoal run function hitchhike:food/goalreached