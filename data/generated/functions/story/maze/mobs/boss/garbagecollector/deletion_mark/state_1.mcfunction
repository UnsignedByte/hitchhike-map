particle dust 1 0.9 0.9 1.05 ~ ~ ~ 0.07500000000000001 10 0.07500000000000001 0 210 normal
execute positioned ~-0.0625 ~-10 ~-0.0625 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.125,dy=20,dz=0.125] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
