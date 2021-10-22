tag @e[sort=nearest,distance=..2,limit=1,nbt={ActiveEffects:[{Id:25b}]}] add maze-shulker-hit

execute as @e[tag=maze-shulker-hit] at @s run function hitchhike:story/maze/weapons/commandblock/onhit
execute at @e[tag=maze-shulker-hit] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"Command Block","color":"aqua","bold":true,"italic":true}'}


tag @e remove maze-shulker-hit

kill @s