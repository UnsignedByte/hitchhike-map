particle minecraft:block barrier ~ ~ ~ 0 0 0 0 10
tp @s ^ ^ ^0.5
scoreboard players add @s maze-weapon-age 1
scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age
scoreboard players operation #tmp maze-weapon-age %= 10 const
execute if score #tmp maze-weapon-age matches 0 run tp @s ^ ^ ^-5
execute if score @s maze-weapon-age matches 40.. run kill @s
