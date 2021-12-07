particle dust 1 0.19999999999999996 0.19999999999999996 1.75 ~ ~ ~ 0.425 10 0.425 0 350 normal
execute positioned ~-0.425 ~-10 ~-0.425 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.85,dy=20,dz=0.85] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 3 true
effect give @e[tag=maze-marked-mob] instant_damage 1 1 true
effect give @e[tag=maze-marked-mob] slowness 2 4 true
effect give @e[tag=maze-marked-mob] jump_boost 2 128 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 1.65
tag @e remove maze-marked-mob
