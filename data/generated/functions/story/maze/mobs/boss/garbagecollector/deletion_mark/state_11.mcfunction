particle dust 1 0.4 0.4 1.55 ~ ~ ~ 0.325 10 0.325 0 310 normal
execute positioned ~-0.1875 ~-10 ~-0.1875 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.375,dy=20,dz=0.375] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 3 true
effect give @e[tag=maze-marked-mob] instant_damage 1 1 true
effect give @e[tag=maze-marked-mob] slowness 2 6 true
effect give @e[tag=maze-marked-mob] jump_boost 2 128 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 1.4500000000000002
tag @e remove maze-marked-mob
