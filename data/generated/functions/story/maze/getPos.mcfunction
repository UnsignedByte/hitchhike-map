# Store position of a given node in grid coordinates
execute store result score _markerx maze run data get entity @s Pos[0]
execute store result score _markery maze run data get entity @s Pos[1]
execute store result score _markerz maze run data get entity @s Pos[2]
scoreboard players add _markerx maze 1500
scoreboard players remove _markery maze 3
scoreboard players operation _markerx maze /= 8 const
scoreboard players operation _markery maze /= 8 const
scoreboard players operation _markerz maze /= 8 const
