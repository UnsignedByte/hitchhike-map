particle dust 1 0 0 1.95 ~ ~ ~ 0.525 10 0.525 0 390 normal
execute positioned ~-0.2875 ~-10 ~-0.2875 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.575,dy=20,dz=0.575] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 1 true
effect give @e[tag=maze-marked-mob] instant_damage 1 0 true
effect give @e[tag=maze-marked-mob] slowness 1 3 true
effect give @e[tag=maze-marked-mob] leviation 1 0 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.85

tag @e remove maze-marked-mob
