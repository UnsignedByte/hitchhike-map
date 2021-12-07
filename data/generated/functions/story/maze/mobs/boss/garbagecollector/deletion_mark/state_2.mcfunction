particle dust 1 0.85 0.85 1.1 ~ ~ ~ 0.1 10 0.1 0 220 normal
execute positioned ~-0.1 ~-10 ~-0.1 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.2,dy=20,dz=0.2] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 3 true
effect give @e[tag=maze-marked-mob] instant_damage 1 1 true
effect give @e[tag=maze-marked-mob] slowness 2 3 true
effect give @e[tag=maze-marked-mob] jump_boost 2 128 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 1
tag @e remove maze-marked-mob
