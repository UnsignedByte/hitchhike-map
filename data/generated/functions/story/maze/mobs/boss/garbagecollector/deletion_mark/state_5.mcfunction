particle dust 1 0.4 0.4 1.5 ~ ~ ~ 0.55 10 0.55 0 250 normal
execute positioned ~-0.55 ~-10 ~-0.55 run tag @e[tag=maze-mob,tag=!maze-boss,dx=1.1,dy=20,dz=1.1] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
