execute as @s at @s if score @s maze-weapon-age matches ..30 unless block ^ ^ ^0.75 air run scoreboard players set @s maze-weapon-age 31
execute as @s at @s if score @s maze-weapon-age matches ..30 run function hitchhike:story/maze/weapons/spoon/fly

execute as @s at @s if score @s maze-weapon-age matches 40.. run function hitchhike:story/maze/weapons/spoon/drop

scoreboard players add @s maze-weapon-age 1