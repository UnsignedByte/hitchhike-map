particle dust 1 0.44999999999999996 0.44999999999999996 1.5 ~ ~ ~ 0.3 10 0.3 0 300 normal
execute positioned ~-0.175 ~-10 ~-0.175 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.35,dy=20,dz=0.35] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
