scoreboard players operation @s maze-mob-phase %= 2 const

execute if score @s maze-mob-phase matches 0 run function generated:story/maze/mobs/move/ip/move-0
execute if score @s maze-mob-phase matches 1 run function generated:story/maze/mobs/move/ip/move-1
scoreboard players add @s maze-mob-phase 1
