particle dust 1 0.9 0.9 1 ~ ~ ~ 0.05 10 0.05 0 200 normal
execute positioned ~-0.05 ~-10 ~-0.05 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.1,dy=20,dz=0.1] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
