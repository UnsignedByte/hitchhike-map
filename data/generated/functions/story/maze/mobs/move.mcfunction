
execute as @e[tag=maze-boss,tag=maze-boss-segfault,scores={boss-stage=0}] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/move/boss/stage/0/segfault/main
execute as @e[tag=maze-boss,tag=maze-boss-segfault,scores={boss-stage=1}] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/move/boss/stage/1/segfault/main
execute as @e[tag=maze-mob,tag=maze-mob-symlink] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/move/symlink/main
execute as @e[tag=maze-mob,tag=maze-mob-johnny] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/move/johnny/main
execute as @e[tag=maze-mob,tag=maze-mob-stack] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/move/stack/main
execute as @e[tag=maze-mob,tag=maze-mob-ip] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/move/ip/main
execute as @e[tag=maze-mob,tag=maze-mob-null] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/move/null/main
execute as @e[tag=maze-mob,tag=maze-mob-gridbug] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/move/gridbug/main
