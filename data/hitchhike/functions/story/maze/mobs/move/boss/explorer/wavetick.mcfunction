tp ^ ^ ^0.1

scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age
scoreboard players operation #tmp maze-weapon-age %= 5 const
execute if score #tmp maze-weapon-age matches 0 run function generated:story/maze/mobs/boss/explorer/render_wave

execute if score @s maze-weapon-age matches 100.. run kill @s

scoreboard players add @s maze-weapon-age 1