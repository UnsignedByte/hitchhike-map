particle dust 1 0.30000000000000004 0.30000000000000004 1.65 ~ ~ ~ 0.375 10 0.375 0 330 normal
execute positioned ~-0.375 ~-10 ~-0.375 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.75,dy=20,dz=0.75] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
