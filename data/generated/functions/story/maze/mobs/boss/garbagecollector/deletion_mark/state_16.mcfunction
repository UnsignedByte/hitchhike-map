particle dust 1 0.15000000000000002 0.15000000000000002 1.8 ~ ~ ~ 0.45 10 0.45 0 360 normal
execute positioned ~-0.25 ~-10 ~-0.25 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.5,dy=20,dz=0.5] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 1 true
effect give @e[tag=maze-marked-mob] instant_damage 1 0 true
effect give @e[tag=maze-marked-mob] slowness 1 3 true
effect give @e[tag=maze-marked-mob] levitation 1 0 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.7000000000000002

tag @e remove maze-marked-mob
