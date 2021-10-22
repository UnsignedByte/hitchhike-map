execute store result score #tmp maze run data get entity @s Motion[1] 1000
scoreboard players add #tmp maze 1000
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #tmp maze

playsound block.anvil.land player @a ~ ~ ~ 0.7 1.3