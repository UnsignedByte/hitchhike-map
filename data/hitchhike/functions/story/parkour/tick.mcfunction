execute as @e[tag=checkpoint-marker] at @s run function generated:story/parkour/updatespawn

execute as @e[type=player,scores={checkpoint-id=-2147483648..,parkour-deaths=1..}] run function generated:story/parkour/respawn
scoreboard players set @e[type=player] parkour-deaths 0