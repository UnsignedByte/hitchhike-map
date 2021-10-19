tp @s ^ ^ ^0.5

scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age
scoreboard players operation #tmp maze-weapon-age %= 5 const

execute if score #tmp maze-weapon-age matches 0 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1

scoreboard players add @s maze-weapon-age 1

execute unless block ^ ^ ^1 air run kill @s
kill @s[scores={maze-weapon-age=40..}]