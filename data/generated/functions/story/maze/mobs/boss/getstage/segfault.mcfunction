scoreboard players operation #tmp boss-stage = @s boss-stage
scoreboard players operation @s boss-stage = bossbar maze
scoreboard players operation @s boss-stage /= 150 const
scoreboard players remove @s boss-stage 1
scoreboard players operation @s boss-stage /= 34 const
scoreboard players operation @s boss-stage *= -1 const
scoreboard players add @s boss-stage 3
execute as @s unless score @s boss-stage = #tmp boss-stage run function generated:story/maze/mobs/boss/init/segfault
