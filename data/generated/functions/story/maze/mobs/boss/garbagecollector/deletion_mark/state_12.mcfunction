particle dust 1 0.35 0.35 1.6 ~ ~ ~ 0.35 10 0.35 0 320 normal
execute positioned ~-0.2 ~-10 ~-0.2 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.4,dy=20,dz=0.4] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
