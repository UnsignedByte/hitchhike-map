execute at @s if score @s maze-weapon-age matches 100 run function generated:story/maze/weapons/return

tp @s ^ ^ ^0.2

playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 0.5 0.01

scoreboard players add @s maze-weapon-age 1