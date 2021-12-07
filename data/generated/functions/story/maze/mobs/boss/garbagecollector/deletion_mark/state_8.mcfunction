particle dust 1 0.55 0.55 1.4 ~ ~ ~ 0.25 10 0.25 0 280 normal
execute positioned ~-0.25 ~-10 ~-0.25 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.5,dy=20,dz=0.5] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 3 true
effect give @e[tag=maze-marked-mob] instant_damage 1 1 true
effect give @e[tag=maze-marked-mob] slowness 2 3 true
effect give @e[tag=maze-marked-mob] jump_boost 2 128 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 1.3
tag @e remove maze-marked-mob
