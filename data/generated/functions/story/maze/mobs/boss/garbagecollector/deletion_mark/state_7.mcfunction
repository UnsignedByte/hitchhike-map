particle dust 1 0.19999999999999996 0.19999999999999996 1.7 ~ ~ ~ 0.75 10 0.75 0 270 normal
execute positioned ~-0.75 ~-10 ~-0.75 run tag @e[tag=maze-mob,tag=!maze-boss,dx=1.5,dy=20,dz=1.5] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
