particle dust 1 0.19999999999999996 0.19999999999999996 1.75 ~ ~ ~ 0.425 10 0.425 0 350 normal
execute positioned ~-0.425 ~-10 ~-0.425 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.85,dy=20,dz=0.85] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
