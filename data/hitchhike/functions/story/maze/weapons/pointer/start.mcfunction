
# 1/2 second per marked mob + base of 3 seconds
scoreboard players set @s maze-weapon-age 60
execute as @e[tag=maze-mob,tag=maze-pointer-marked] run scoreboard players operation @s maze-weapon-age += 20 const

execute at @e[tag=maze-mob,tag=maze-pointer-marked] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:1b,Fuse:0,CustomName:'{"text":"std::unique_ptr::reset","color":"aqua","bold":true}'}