particle dust 1 0.09999999999999998 0.09999999999999998 1.8 ~ ~ ~ 0.8500000000000001 10 0.8500000000000001 0 280 normal
execute positioned ~-0.8500000000000001 ~-10 ~-0.8500000000000001 run tag @e[tag=maze-mob,tag=!maze-boss,dx=1.7000000000000002,dy=20,dz=1.7000000000000002] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
