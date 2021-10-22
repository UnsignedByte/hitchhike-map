summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"Digitally Enlarged Spoon","color":"aqua","bold":true,"italic":true}'}
playsound block.anvil.land player @a ~ ~ ~ 1 0.8

particle minecraft:crit ~ ~ ~ 1 0.5 1 1 100

kill @e[tag=match-uuid-select]
function generated:story/maze/weapons/return