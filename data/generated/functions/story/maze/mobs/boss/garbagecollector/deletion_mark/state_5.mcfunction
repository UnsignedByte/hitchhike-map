particle dust 1 0.7 0.7 1.25 ~ ~ ~ 0.175 10 0.175 0 250 normal
execute positioned ~-0.1125 ~-10 ~-0.1125 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.225,dy=20,dz=0.225] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 1 true
effect give @e[tag=maze-marked-mob] instant_damage 1 0 true
effect give @e[tag=maze-marked-mob] slowness 1 3 true
tag @e remove maze-marked-mob
