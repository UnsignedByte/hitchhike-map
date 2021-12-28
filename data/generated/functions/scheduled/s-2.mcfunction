execute if score enabled maze matches 1 run playsound minecraft:entity.guardian.attack neutral @a -1400.0 16 -174.0 0.4 2
execute if score enabled maze matches 1 as @a[x=-1403,y=11,z=-175,dx=5,dy=12,dz=1] run function hitchhike:story/sawyer/maze/warp
execute as @e[tag=maze-magma-spray] at @s if entity @p[distance=..16] if predicate hitchhike:movechance run function generated:story/maze/mobs/boss/segfault/sprayturret_tick
schedule function generated:scheduled/s-2 2t
