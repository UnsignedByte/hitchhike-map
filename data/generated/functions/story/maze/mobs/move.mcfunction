
execute as @e[tag=maze-mob,tag=maze-mob-ip] at @s if predicate hitchhike:movechance if entity @p[distance=..16] run function generated:story/maze/mobs/move/ip/main
execute as @e[tag=maze-mob,tag=maze-mob-gridbug] at @s if predicate hitchhike:movechance if entity @p[distance=..16] run function generated:story/maze/mobs/move/gridbug/main
