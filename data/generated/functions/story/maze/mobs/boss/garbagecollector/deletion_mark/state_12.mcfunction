particle dust 1 0.35 0.35 1.6 ~ ~ ~ 0.35 10 0.35 0 320 normal
execute positioned ~-0.2 ~-10 ~-0.2 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.4,dy=20,dz=0.4] add maze-marked-mob
effect give @e[tag=maze-marked-mob] resistance 1 1 true
effect give @e[tag=maze-marked-mob] instant_damage 1 0 true
effect give @e[tag=maze-marked-mob] slowness 1 3 true
effect give @e[tag=maze-marked-mob] leviation 1 0 true
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.5
summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Garbage Collector","color":"dark_green","bold":true}'}
tag @e remove maze-marked-mob
