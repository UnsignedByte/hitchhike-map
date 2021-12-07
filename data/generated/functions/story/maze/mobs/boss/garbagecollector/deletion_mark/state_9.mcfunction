particle dust 1 0 0 1.9 ~ ~ ~ 0.5 10 0.5 0 290 normal
execute positioned ~-0.5 ~-10 ~-0.5 run tag @e[tag=maze-mob,tag=!maze-boss,dx=1,dy=20,dz=1] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
