particle dust 1 0.6 0.6 1.3 ~ ~ ~ 0.35 10 0.35 0 230 normal
execute positioned ~-0.35 ~-10 ~-0.35 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.7,dy=20,dz=0.7] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
