particle dust 1 0 0 1.9 ~ ~ ~ 0.9500000000000001 10 0.9500000000000001 0 290 normal
execute positioned ~-0.9500000000000001 ~-10 ~-0.9500000000000001 run tag @e[tag=maze-mob,tag=!maze-boss,dx=1.9000000000000001,dy=20,dz=1.9000000000000001] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
