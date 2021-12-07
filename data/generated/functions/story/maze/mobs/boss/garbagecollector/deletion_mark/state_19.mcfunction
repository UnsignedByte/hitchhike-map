particle dust 1 0 0 1.95 ~ ~ ~ 0.525 10 0.525 0 390 normal
execute positioned ~-0.2875 ~-10 ~-0.2875 run tag @e[tag=maze-mob,tag=!maze-boss,dx=0.575,dy=20,dz=0.575] add maze-marked-mob
effect clear @e[tag=maze-marked-mob] resistance
execute at @e[tag=maze-marked-mob] run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Garbage Collector","color":"dark_green","bold":true}'}
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 1.85
tag @e remove maze-marked-mob
