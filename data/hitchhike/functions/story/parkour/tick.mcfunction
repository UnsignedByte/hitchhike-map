execute as @e[tag=checkpoint-marker] at @s run function generated:story/parkour/updatespawn

execute as @a[scores={checkpoint-id=-2147483648..,parkour-deaths=1..},distance=0..] run function generated:story/parkour/respawn
scoreboard players set @a[distance=0..] parkour-deaths 0