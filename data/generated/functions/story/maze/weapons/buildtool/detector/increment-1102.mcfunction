execute as @s positioned ~-4 ~5 ~2 if block ~ ~ ~ barrier run function generated:story/maze/weapons/buildtool/summontimer_
execute as @s if score @s maze-placed matches 1.. positioned ~ ~ ~ run function generated:story/maze/weapons/buildtool/detector/increment-1103
