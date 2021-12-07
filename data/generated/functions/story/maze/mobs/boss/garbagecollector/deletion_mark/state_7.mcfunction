particle dust 1 0.19999999999999996 0.19999999999999996 1.7 ~ ~ ~ 0.39999999999999997 10 0.39999999999999997 0 270 normal
execute positioned ~-0.39999999999999997 ~-10 ~-0.39999999999999997 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.7999999999999999,dy=20,dz=0.7999999999999999] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
