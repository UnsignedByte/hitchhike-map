particle dust 1 0.09999999999999998 0.09999999999999998 1.85 ~ ~ ~ 0.475 10 0.475 0 370 normal
execute positioned ~-0.2625 ~-10 ~-0.2625 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.525,dy=20,dz=0.525] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 1 true
effect give @e[tag=maze-marked-mob] instant_damage 1 0 true
effect give @e[tag=maze-marked-mob] slowness 1 3 true
tag @e remove maze-marked-mob
