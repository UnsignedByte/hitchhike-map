particle dust 1 0.09999999999999998 0.09999999999999998 1.85 ~ ~ ~ 0.475 10 0.475 0 370 normal
execute positioned ~-0.475 ~-10 ~-0.475 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.95,dy=20,dz=0.95] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 3 true
effect give @e[tag=maze-marked-mob] instant_damage 1 1 true
effect give @e[tag=maze-marked-mob] slowness 2 3 true
effect give @e[tag=maze-marked-mob] jump_boost 2 128 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 1.75
tag @e remove maze-marked-mob
