#> moves an armor stand holding the physics item relative to the entity given

execute store result score #CMP UUID1 run data get entity @s data.ItemUUID[0]
execute store result score #CMP UUID2 run data get entity @s data.ItemUUID[2]
execute store result score #CMP UUID3 run data get entity @s data.ItemUUID[3]
execute store result score #CMP UUID4 run data get entity @s data.ItemUUID[4]

execute as @s run function hitchhike:uuid/match

execute store result score #R1 thrown-item run data get entity @s Rotation[1] 1000
scoreboard players remove #R1 thrown-item 10000
execute store result entity @e[tag=selected-thrown-item-stand,limit=1] Pose.RightArm[0] double 0.001 run scoreboard players get #R1 thrown-item
data modify entity @e[tag=selected-thrown-item-stand,limit=1] Pose.RightArm[1] set from entity @s Rotation[0]

execute at @s positioned ~0.3125 ~-1.5 ~ run tp @e[tag=selected-thrown-item-stand] ^0.0625 ^0.75 ^ 

tag @e remove selected-thrown-item-stand