#> mark random areas for death
scoreboard players add @s maze-weapon-age 1
execute if score @s maze-weapon-age matches 1 as @s at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark/state_0
execute if score @s maze-weapon-age matches 2 as @s at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark/state_1
execute if score @s maze-weapon-age matches 3 as @s at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark/state_2
execute if score @s maze-weapon-age matches 4 as @s at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark/state_3
execute if score @s maze-weapon-age matches 5 as @s at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark/state_4
execute if score @s maze-weapon-age matches 6 as @s at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark/state_5
execute if score @s maze-weapon-age matches 7 as @s at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark/state_6
execute if score @s maze-weapon-age matches 8 as @s at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark/state_7
execute if score @s maze-weapon-age matches 9 as @s at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark/state_8
execute if score @s maze-weapon-age matches 10 as @s at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark/state_9
execute if score @s maze-weapon-age matches 11 run kill @s
