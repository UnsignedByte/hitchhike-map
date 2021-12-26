execute positioned 898.5 61 -61.5 if entity @a[distance=..30] if predicate hitchhike:onethird run function generated:misc/fountain
execute positioned 892.5 61 -61.5 if entity @a[distance=..30] if predicate hitchhike:onethird run function generated:misc/fountain
execute as @e[tag=maze-path-display,type=marker] at @s run function hitchhike:story/maze/pathfind/displaytick
function generated:story/maze/mobs/move
execute as @e[tag=maze-firesummon] at @s if entity @p[distance=..16] unless block ~ ~-0.1 ~ air run function generated:story/maze/mobs/boss/segfault/firesource_tick
execute as @e[tag=maze-deletion-mark] at @s run function generated:story/maze/mobs/boss/garbagecollector/deletion_mark
schedule function generated:scheduled/s-10 10t
