particle dust 1 0.4 0.4 1.5 ~ ~ ~ 0.3 10 0.3 0 250 normal
execute positioned ~-0.3 ~-10 ~-0.3 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.6,dy=20,dz=0.6] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
