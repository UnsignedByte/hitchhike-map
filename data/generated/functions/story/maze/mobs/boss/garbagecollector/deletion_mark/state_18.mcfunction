particle dust 1 0.050000000000000044 0.050000000000000044 1.9 ~ ~ ~ 0.5 10 0.5 0 380 normal
execute positioned ~-0.275 ~-10 ~-0.275 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.55,dy=20,dz=0.55] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
