particle dust 1 0.15000000000000002 0.15000000000000002 1.8 ~ ~ ~ 0.45 10 0.45 0 360 normal
execute positioned ~-0.45 ~-10 ~-0.45 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.9,dy=20,dz=0.9] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
