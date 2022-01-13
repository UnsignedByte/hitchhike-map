execute store result score #CMP UUID0 run data get entity @s RootVehicle.Entity.UUID[0]
execute store result score #CMP UUID1 run data get entity @s RootVehicle.Entity.UUID[1]
execute store result score #CMP UUID2 run data get entity @s RootVehicle.Entity.UUID[2]
execute store result score #CMP UUID3 run data get entity @s RootVehicle.Entity.UUID[3]
function hitchhike:uuid/match

tag @e[tag=match-uuid-select] add lake-boat-protected
tag @e[tag=match-uuid-select] remove match-selectable