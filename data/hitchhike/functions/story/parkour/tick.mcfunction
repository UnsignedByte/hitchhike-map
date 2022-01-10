execute as @e[tag=checkpoint-marker] at @s run function generated:story/parkour/updatespawn

execute as @a[scores={checkpoint-id=-2147483648..,parkour-deaths=1..}] run function generated:story/parkour/respawn
scoreboard players set @a parkour-deaths 0