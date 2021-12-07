particle dust 1 0.19999999999999996 0.19999999999999996 1.75 ~ ~ ~ 0.425 10 0.425 0 350 normal
execute positioned ~-0.2375 ~-10 ~-0.2375 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.475,dy=20,dz=0.475] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 1 true
effect give @e[tag=maze-marked-mob] instant_damage 1 0 true
effect give @e[tag=maze-marked-mob] slowness 1 3 true
effect give @e[tag=maze-marked-mob] leviation 1 0 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.65
summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Garbage Collector","color":"dark_green","bold":true}'}
tag @e remove maze-marked-mob
