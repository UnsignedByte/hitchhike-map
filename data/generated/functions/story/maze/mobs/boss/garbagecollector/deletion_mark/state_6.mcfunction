particle dust 1 0.65 0.65 1.3 ~ ~ ~ 0.2 10 0.2 0 260 normal
execute positioned ~-0.125 ~-10 ~-0.125 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.25,dy=20,dz=0.25] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 1 true
effect give @e[tag=maze-marked-mob] instant_damage 1 0 true
effect give @e[tag=maze-marked-mob] slowness 1 3 true
tag @e remove maze-marked-mob
