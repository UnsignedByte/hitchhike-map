particle dust 1 0.7 0.7 1.2 ~ ~ ~ 0.25 10 0.25 0 220 normal
execute positioned ~-0.25 ~-10 ~-0.25 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.5,dy=20,dz=0.5] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
