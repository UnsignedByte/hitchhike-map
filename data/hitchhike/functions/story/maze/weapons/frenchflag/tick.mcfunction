execute at @s if score @s maze-weapon-age matches 100 run function generated:story/maze/weapons/return

tp @s ^ ^ ^0.2

scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age
scoreboard players operation #tmp maze-weapon-age %= 5 const

execute if score #tmp maze-weapon-age matches 0 if score @s maze-weapon-age matches ..40 run playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 0.2 0.01

scoreboard players add @s maze-weapon-age 1