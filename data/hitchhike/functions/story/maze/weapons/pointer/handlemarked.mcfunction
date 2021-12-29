execute as @s anchored eyes positioned ^ ^ ^ run particle witch ~ ~0.5 ~

execute if score @s maze-weapon-age matches 20.. run tag @s remove maze-pointer-marked

scoreboard players add @s maze-weapon-age 1