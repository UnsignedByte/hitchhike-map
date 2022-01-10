scoreboard players operation #tmp checkpoint-id = @s checkpoint-id
execute as @e[tag=checkpoint-marker] if score @s checkpoint-id = #tmp checkpoint-id run tag @s add checkpoint-candidate
execute at @e[tag=checkpoint-candidate,limit=1] run tp @s ~ ~1.375 ~
tag @e remove checkpoint-candidate
scoreboard players set @s parkour-deaths 0
