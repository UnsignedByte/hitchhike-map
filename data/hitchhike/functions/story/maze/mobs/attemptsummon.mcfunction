#> choose a valid summon attempt and spawn a batch at it.

execute as @e[tag=maze-mob-spawn-attempt] at @s if block ~ ~ ~ air if block ~ ~1 ~ air unless entity @p[distance=..10] run tag @s add maze-mob-valid-spawn-attempt

execute as @e[tag=maze-mob-valid-spawn-attempt,limit=1,sort=random] at @s run function hitchhike:story/maze/mobs/summonbatch

kill @e[tag=maze-mob-spawn-attempt]