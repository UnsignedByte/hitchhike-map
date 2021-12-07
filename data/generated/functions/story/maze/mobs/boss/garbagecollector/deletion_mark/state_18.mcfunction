particle dust 1 0.050000000000000044 0.050000000000000044 1.9 ~ ~ ~ 0.5 10 0.5 0 380 normal
execute positioned ~-0.275 ~-10 ~-0.275 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.55,dy=20,dz=0.55] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 3 true
effect give @e[tag=maze-marked-mob] instant_damage 1 1 true
effect give @e[tag=maze-marked-mob] slowness 1 5 true
effect give @e[tag=maze-marked-mob] jump_boost 1 128 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 1.8
tag @e remove maze-marked-mob
