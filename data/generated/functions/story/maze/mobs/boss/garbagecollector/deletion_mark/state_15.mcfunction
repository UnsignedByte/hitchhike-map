particle dust 1 0.19999999999999996 0.19999999999999996 1.75 ~ ~ ~ 0.425 10 0.425 0 350 normal
execute positioned ~-0.2375 ~-10 ~-0.2375 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.475,dy=20,dz=0.475] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 1 true
effect give @e[tag=maze-marked-mob] instant_damage 1 0 true
effect give @e[tag=maze-marked-mob] slowness 1 4 true
effect give @e[tag=maze-marked-mob] jump_boost 1 128 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 1.65

tag @e remove maze-marked-mob
