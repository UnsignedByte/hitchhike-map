scoreboard players operation @s maze-mob-phase %= 1 const

execute if score @s maze-mob-phase matches 0 run function generated:story/maze/mobs/move/boss/stage/0/explorer/move-0
scoreboard players add @s maze-mob-phase 1
