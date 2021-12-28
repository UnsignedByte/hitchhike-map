particle minecraft:small_flame ~ ~ ~ 0.25 0.25 0.25 0 3
playsound minecraft:block.fire.ambient neutral @a ~ ~ ~ 0.05 0.6

execute as @e[tag=maze-mob,distance=..1] run data modify entity @s Fire set value 20
execute as @e[tag=maze-mob,distance=..1] run data modify entity @s Motion[1] set value 0.3

execute at @s if score @s maze-weapon-age matches 120 run kill @s

scoreboard players add @s maze-weapon-age 1