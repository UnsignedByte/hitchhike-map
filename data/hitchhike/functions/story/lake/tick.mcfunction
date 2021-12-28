execute as @e[type=minecraft:dolphin,tag=dolphin-train] run function generated:story/lake/dolphintrain/tick

execute at @e[tag=lake-vortex] run fill ~-3 105 ~-3 ~3 113 ~3 bubble_column[drag=true] replace water
execute at @e[tag=lake-vortex] run particle minecraft:current_down ~ 113.9 ~ 1.5 0 1.5 0 10
execute at @e[tag=lake-vortex] run particle minecraft:splash ~ 114.0 ~ 1.5 0 1.5 0 6

execute as @e[tag=lake-boat] at @s if block ~ ~ ~ bubble_column run tp @s ~ ~-0.1 ~
execute as @e[tag=lake-boat] at @s if block ~ ~ ~ bubble_column run data merge entity @s {Motion:[0.0d,-0.3d,0.0d]}