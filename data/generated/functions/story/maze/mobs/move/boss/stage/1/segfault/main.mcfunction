scoreboard players operation @s maze-mob-phase %= 4 const

execute if score @s maze-mob-phase matches 0 run function generated:story/maze/mobs/move/boss/stage/1/segfault/move-0
execute if score @s maze-mob-phase matches 1 run function generated:story/maze/mobs/move/boss/stage/1/segfault/move-1
execute if score @s maze-mob-phase matches 2 run function generated:story/maze/mobs/move/boss/stage/1/segfault/move-2
execute if score @s maze-mob-phase matches 3 run function generated:story/maze/mobs/move/boss/stage/1/segfault/move-3
scoreboard players add @s maze-mob-phase 1
