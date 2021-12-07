particle dust 1 0.8 0.8 1.1 ~ ~ ~ 0.1 10 0.1 0 210 normal
execute positioned ~-0.1 ~-10 ~-0.1 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.2,dy=20,dz=0.2] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
