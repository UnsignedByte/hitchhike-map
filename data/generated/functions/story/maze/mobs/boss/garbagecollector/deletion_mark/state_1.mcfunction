particle dust 1 0.8 0.8 1.1 ~ ~ ~ 0.15000000000000002 10 0.15000000000000002 0 210 normal
execute positioned ~-0.15000000000000002 ~-10 ~-0.15000000000000002 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.30000000000000004,dy=20,dz=0.30000000000000004] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
