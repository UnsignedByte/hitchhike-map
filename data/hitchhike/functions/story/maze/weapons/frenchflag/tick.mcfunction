execute if score @s maze-weapon-age matches ..30 run tp @s ^ ^ ^0.2

scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age
scoreboard players operation #tmp maze-weapon-age %= 5 const

execute if score #tmp maze-weapon-age matches 0 if score @s maze-weapon-age matches ..30 run playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 0.2 0.01

execute at @s if score @s maze-weapon-age matches 80 run function generated:story/maze/weapons/return

scoreboard players add @s maze-weapon-age 1