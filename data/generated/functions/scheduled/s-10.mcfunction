execute at @a[tag=lake-player-wet] positioned ~ 105 ~ run function generated:story/lake/piranha/summon
execute at @a[tag=lake-player-wet] positioned ~ 105 ~ run function generated:story/lake/piranha/summon
effect give @a[tag=lake-player-wet] minecraft:blindness 4 0 true
effect give @a[tag=lake-player-wet] minecraft:slowness 5 9 true
scoreboard players set _rngm vars 6
scoreboard players set _rngmin vars 0
execute positioned 898.5 61 -61.5 if entity @a[tag=fountainous] if predicate hitchhike:onethird run function generated:story/fountain/spawn/random
execute positioned 892.5 61 -61.5 if entity @a[tag=fountainous] if predicate hitchhike:onethird run function generated:story/fountain/spawn/random
execute as @e[tag=maze-path-display,type=marker] at @s run function hitchhike:story/maze/pathfind/displaytick
function generated:story/maze/mobs/move
execute as @e[tag=maze-firesummon] at @s if entity @p[distance=..16] unless block ~ ~-0.1 ~ air run function generated:story/maze/mobs/boss/segfault/firesource_tick
execute as @e[tag=maze-deletion-mark] at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark
schedule function generated:scheduled/s-10 10t
