particle dust 1 0.75 0.75 1.2 ~ ~ ~ 0.15000000000000002 10 0.15000000000000002 0 240 normal
execute positioned ~-0.15000000000000002 ~-10 ~-0.15000000000000002 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.30000000000000004,dy=20,dz=0.30000000000000004] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 3 true
effect give @e[tag=maze-marked-mob] instant_damage 1 1 true
effect give @e[tag=maze-marked-mob] slowness 2 3 true
effect give @e[tag=maze-marked-mob] jump_boost 2 128 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 1.1
tag @e remove maze-marked-mob
