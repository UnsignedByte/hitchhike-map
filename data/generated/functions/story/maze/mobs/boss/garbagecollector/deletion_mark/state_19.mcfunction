particle dust 1 0 0 1.95 ~ ~ ~ 0.525 10 0.525 0 390 normal
execute positioned ~-0.525 ~-10 ~-0.525 run tag @e[tag=maze-mob,tag=!maze-boss,dx=1.05,dy=20,dz=1.05] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
