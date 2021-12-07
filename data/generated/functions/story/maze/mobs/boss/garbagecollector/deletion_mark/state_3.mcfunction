particle dust 1 0.8 0.8 1.15 ~ ~ ~ 0.125 10 0.125 0 230 normal
execute positioned ~-0.0875 ~-10 ~-0.0875 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.175,dy=20,dz=0.175] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
