particle dust 1 0.55 0.55 1.4 ~ ~ ~ 0.25 10 0.25 0 280 normal
execute positioned ~-0.15000000000000002 ~-10 ~-0.15000000000000002 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.30000000000000004,dy=20,dz=0.30000000000000004] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 1 true
effect give @e[tag=maze-marked-mob] instant_damage 1 0 true
effect give @e[tag=maze-marked-mob] slowness 1 3 true
tag @e remove maze-marked-mob
