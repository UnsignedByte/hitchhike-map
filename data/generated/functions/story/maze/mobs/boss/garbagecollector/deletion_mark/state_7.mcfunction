particle dust 1 0.6 0.6 1.35 ~ ~ ~ 0.22499999999999998 10 0.22499999999999998 0 270 normal
execute positioned ~-0.1375 ~-10 ~-0.1375 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.275,dy=20,dz=0.275] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
