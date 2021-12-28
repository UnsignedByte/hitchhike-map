scoreboard players operation #tmp maze-weapon-age = @s maze-weapon-age
scoreboard players operation #tmp maze-weapon-age %= 10 const
execute if score #tmp maze-weapon-age matches 0 run function generated:story/maze/weapons/firewall/summonwall

execute at @s if score @s maze-weapon-age matches 120 run function generated:story/maze/weapons/return

scoreboard players add @s maze-weapon-age 1