# Store position of a given node in grid coordinates
execute store result score @s maze-xpos run data get entity @s Pos[0]
execute store result score @s maze-ypos run data get entity @s Pos[1]
execute store result score @s maze-zpos run data get entity @s Pos[2]
scoreboard players add @s maze-xpos 1500
scoreboard players remove @s maze-ypos 3
scoreboard players operation @s maze-xpos /= 9 const
scoreboard players operation @s maze-ypos /= 9 const
scoreboard players operation @s maze-zpos /= 9 const
