execute as @s positioned ~-4 ~-1 ~-4 if block ~ ~ ~ barrier run function generated:story/maze/weapons/buildtool/summontimer_
execute as @s unless score @s maze-placed matches ..0 positioned ~ ~ ~ run function generated:story/maze/weapons/buildtool/detector/increment-758
