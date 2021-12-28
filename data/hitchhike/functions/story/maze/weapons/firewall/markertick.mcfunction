particle minecraft:small_flame ~ ~ ~ 0.25 0.25 0.25 0 3
playsound minecraft:block.fire.ambient neutral @a ~ ~ ~ 0.05 0.6

data modify entity @e[tag=maze-mob,distance=..1] Fire set value 20
data modify entity @e[tag=maze-mob,distance=..1] Motion[1] set value 0.3

execute at @s if score @s maze-weapon-age matches 120 run kill @s

scoreboard players add @s maze-weapon-age 1