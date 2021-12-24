scoreboard players set #tmp maze-placed 0
execute store result score #tmp maze-placed run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 light_gray_wool replace barrier
execute as @s positioned ~ ~ ~ if score #tmp maze-placed matches 1.. run function generated:story/maze/weapons/buildtool/summontimer
