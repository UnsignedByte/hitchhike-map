execute at @s if score @s maze-weapon-age matches ..40 if score #frenchflag maze-weapon-age matches 0 run function hitchhike:story/weapons/frenchflag/move

execute at @s if score @s maze-weapon-age matches 40 run function hitchhike:story/maze/weapons/spoon/land

scoreboard players add @s maze-weapon-age 1