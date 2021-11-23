execute as @e[tag=maze-magma-spray] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/boss/segfault/sprayturret_tick
schedule function generated:scheduled/s-2 2t
