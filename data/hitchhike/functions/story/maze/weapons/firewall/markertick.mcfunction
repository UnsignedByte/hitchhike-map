particle minecraft:small_flame ~ ~ ~ 0.2 0.2 0.2 0 3
playsound minecraft:block.fire.ambient neutral @a ~ ~ ~ 0.1 0.8

execute at @s if score @s maze-weapon-age matches 80 run kill @s

scoreboard players add @s maze-weapon-age 1