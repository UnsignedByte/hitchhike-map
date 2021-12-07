particle dust 1 0.6 0.6 1.35 ~ ~ ~ 0.22499999999999998 10 0.22499999999999998 0 270 normal
execute positioned ~-0.1375 ~-10 ~-0.1375 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.275,dy=20,dz=0.275] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 3 true
effect give @e[tag=maze-marked-mob] instant_damage 1 1 true
effect give @e[tag=maze-marked-mob] slowness 1 5 true
effect give @e[tag=maze-marked-mob] jump_boost 1 128 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 1.25
tag @e remove maze-marked-mob
