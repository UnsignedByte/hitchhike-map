execute store result score #CMP UUID0 run data get entity @s data.PlayerUUID[0]
execute store result score #CMP UUID1 run data get entity @s data.PlayerUUID[1]
execute store result score #CMP UUID2 run data get entity @s data.PlayerUUID[2]
execute store result score #CMP UUID3 run data get entity @s data.PlayerUUID[3]
tag @a add match-selectable
function hitchhike:uuid/match
execute if entity @s[tag=maze-weapon-spoon] as @a[tag=match-uuid-select] run function generated:story/maze/weapons/spoon/give
