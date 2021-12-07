particle dust 1 0.5 0.5 1.45 ~ ~ ~ 0.275 10 0.275 0 290 normal
execute positioned ~-0.275 ~-10 ~-0.275 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.55,dy=20,dz=0.55] add maze-marked-mob
effect give @e[tag=maze-marked-mob] glowing 1 0 true
tag @e remove maze-marked-mob
