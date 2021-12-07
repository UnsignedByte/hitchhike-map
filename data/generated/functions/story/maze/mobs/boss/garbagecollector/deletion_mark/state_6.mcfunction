particle dust 1 0.30000000000000004 0.30000000000000004 1.6 ~ ~ ~ 0.65 10 0.65 0 260 normal
execute positioned ~-0.65 ~-10 ~-0.65 run tag @e[tag=maze-mob,tag=!maze-boss,dx=1.3,dy=20,dz=1.3] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
