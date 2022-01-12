execute store result score #CMP UUID0 run data get entity @s Thrower[0]
execute store result score #CMP UUID1 run data get entity @s Thrower[1]
execute store result score #CMP UUID2 run data get entity @s Thrower[2]
execute store result score #CMP UUID3 run data get entity @s Thrower[3]
tag @a add match-selectable
function hitchhike:uuid/match
execute as @p[tag=match-uuid-select] at @s run function generated:story/parkour/respawn
kill @s
