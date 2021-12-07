particle dust 1 0.44999999999999996 0.44999999999999996 1.5 ~ ~ ~ 0.3 10 0.3 0 300 normal
execute positioned ~-0.175 ~-10 ~-0.175 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.35,dy=20,dz=0.35] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 3 true
effect give @e[tag=maze-marked-mob] instant_damage 1 1 true
effect give @e[tag=maze-marked-mob] slowness 2 3 true
effect give @e[tag=maze-marked-mob] jump_boost 2 128 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 1.4
tag @e remove maze-marked-mob
