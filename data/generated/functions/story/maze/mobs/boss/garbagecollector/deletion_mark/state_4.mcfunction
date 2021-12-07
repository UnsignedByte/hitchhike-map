particle dust 1 0.75 0.75 1.2 ~ ~ ~ 0.15000000000000002 10 0.15000000000000002 0 240 normal
execute positioned ~-0.1 ~-10 ~-0.1 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.2,dy=20,dz=0.2] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
