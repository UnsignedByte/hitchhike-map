#> Match display item to the given marker

execute store result score #CMP UUID0 run data get entity @s data.ItemUUID[0]
execute store result score #CMP UUID1 run data get entity @s data.ItemUUID[1]
execute store result score #CMP UUID2 run data get entity @s data.ItemUUID[2]
execute store result score #CMP UUID3 run data get entity @s data.ItemUUID[3]

function hitchhike:uuid/match