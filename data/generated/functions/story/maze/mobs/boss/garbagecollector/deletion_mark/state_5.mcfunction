particle dust 1 0.7 0.7 1.25 ~ ~ ~ 0.175 10 0.175 0 250 normal
execute positioned ~-0.1125 ~-10 ~-0.1125 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.225,dy=20,dz=0.225] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
