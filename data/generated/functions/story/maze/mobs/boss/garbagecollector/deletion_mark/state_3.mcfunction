particle dust 1 0.8 0.8 1.15 ~ ~ ~ 0.125 10 0.125 0 230 normal
execute positioned ~-0.0875 ~-10 ~-0.0875 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.175,dy=20,dz=0.175] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 1 true
effect give @e[tag=maze-marked-mob] instant_damage 1 0 true
effect give @e[tag=maze-marked-mob] slowness 1 3 true
effect give @e[tag=maze-marked-mob] leviation 1 0 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.05
tag @e remove maze-marked-mob
