tp @s ^ ^ ^0.2

scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age
scoreboard players operation #tmp maze-weapon-age %= 3 const
execute if score #tmp maze-weapon-age matches 0 at @s run function generated:story/maze/mobs/boss/explorer/render_wave

playsound minecraft:block.bubble_column.upwards_inside hostile @a ~ ~ ~ 0.5 0.2

execute if score @s maze-weapon-age matches 100.. run kill @s

scoreboard players add @s maze-weapon-age 1