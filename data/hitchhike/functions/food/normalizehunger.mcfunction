#> Normalize the players' hnger toward a value
execute if score @s foodTotal < @s foodGoal run effect give @s saturation 1 0 true
execute if score @s foodTotal > @s foodGoal run effect give @s hunger 1 255 true
execute if score @s foodTotal = @s foodGoal run function hitchhike:food/goalreached