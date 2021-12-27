execute as @e[type=item,x=893,y=54,z=-93,dx=4,dz=12,dy=4] at @s if block ~ ~ ~ iron_trapdoor unless block ~ ~-0.19 ~ iron_trapdoor run tag @s add fountain-fished
execute as @e[type=item,x=893,y=54,z=-93,dx=4,dz=12,dy=4] at @s if entity @e[type=fishing_bobber,distance=..0.3] run tag @s add fountain-fished

execute at @e[tag=fountain-fished] run kill @e[type=fishing_bobber,sort=nearest,limit=1,distance=..0.3]
tp @e[type=item,tag=fountain-fished] 895.5 60.5 -83.5

tag @e remove fountain-fished