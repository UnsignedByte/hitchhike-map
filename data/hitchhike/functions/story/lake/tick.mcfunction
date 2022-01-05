execute as @e[type=minecraft:dolphin,tag=dolphin-train] run function generated:story/lake/dolphintrain/tick

execute at @e[tag=lake-vortex-small] run fill ~-3 105 ~-3 ~3 113 ~3 bubble_column[drag=true] replace water
execute at @e[tag=lake-vortex-small] run particle minecraft:current_down ~ 114.0 ~ 1.5 0 1.5 0 5
execute at @e[tag=lake-vortex-small] run particle minecraft:splash ~ 114.0 ~ 1.5 0 1.5 0 6

execute at @e[tag=lake-vortex-large] run fill ~-6 105 ~-6 ~6 113 ~6 bubble_column[drag=true] replace water
execute at @e[tag=lake-vortex-large] run particle minecraft:current_down ~ 114.0 ~ 3 0 3 0 5
execute at @e[tag=lake-vortex-large] run particle minecraft:splash ~ 114.0 ~ 3 0 3 0 6

execute as @e[tag=lake-boat] at @s if block ~ ~ ~ bubble_column run tp @s ~ ~-0.1 ~
execute as @e[tag=lake-boat] at @s if block ~ ~ ~ bubble_column run data merge entity @s {Motion:[0.0d,-0.3d,0.0d]}

execute as @e[tag=lake-piranha,type=drowned] at @s run function generated:story/lake/piranha/tick
execute as @e[tag=lake-piranha] at @s unless entity @p[tag=lake-player-wet,distance=..20] run function hitchhike:kill

tag @a remove lake-player-wet
execute as @a[gamemode=adventure,nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}},x=924,z=327,dx=272,dz=159,y=105,dy=8] run tag @s add lake-player-wet
execute as @a[tag=lake-player-wet] at @s unless block ~ ~ ~ water unless block ~ ~ ~ bubble_column unless block ~ ~ ~ jungle_fence[waterlogged=true] unless block ~ ~ ~ iron_bars[waterlogged=true] run tag @s remove lake-player-wet

execute as @a[tag=lake-player-wet] at @s if entity @s[y=114,dy=0] run fill ~-1 ~ ~-1 ~1 ~ ~1 bubble_column[drag=true] replace water

scoreboard players set @a[tag=lake-player-wet] foodGoal 16