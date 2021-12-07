particle dust 1 0.25 0.25 1.7 ~ ~ ~ 0.39999999999999997 10 0.39999999999999997 0 340 normal
execute positioned ~-0.22499999999999998 ~-10 ~-0.22499999999999998 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.44999999999999996,dy=20,dz=0.44999999999999996] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 1 true
effect give @e[tag=maze-marked-mob] instant_damage 1 0 true
effect give @e[tag=maze-marked-mob] slowness 1 3 true
tag @e remove maze-marked-mob
