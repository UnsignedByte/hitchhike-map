scoreboard objectives remove checkpoint-id
scoreboard objectives add checkpoint-id dummy
kill @e[tag=checkpoint-marker]
function generated:story/parkour/summoncheckpoints

# Reset tower parkour
setblock 986 237 563 air
setblock 990 233 566 air
setblock 989 233 567 air
setblock 990 231 566 air
setblock 989 231 567 air
setblock 989 220 562 air
setblock 989 231 565 air
setblock 989 233 565 air
setblock 988 231 566 air
setblock 988 233 566 air

setblock 986 237 563 minecraft:lever[face=floor,facing=south,powered=false]
setblock 990 233 566 minecraft:lever[face=wall,facing=east,powered=true]
setblock 989 233 567 minecraft:lever[face=wall,facing=south,powered=true]
setblock 990 231 566 minecraft:lever[face=wall,facing=east,powered=true]
setblock 989 231 567 minecraft:lever[face=wall,facing=south,powered=true]
setblock 989 220 562 minecraft:lever[face=wall,facing=east,powered=false]

setblock 989 231 565 minecraft:iron_trapdoor[facing=north,half=top,open=true,powered=true,waterlogged=false]
setblock 989 233 565 minecraft:iron_trapdoor[facing=north,half=bottom,open=true,powered=true,waterlogged=false]
setblock 988 231 566 minecraft:iron_trapdoor[facing=west,half=top,open=true,powered=true,waterlogged=false]
setblock 988 233 566 minecraft:iron_trapdoor[facing=west,half=top,open=true,powered=true,waterlogged=false]

execute as @e[tag=parkour-leash-knot] run function hitchhike:kill
summon leash_knot 830 124 487 {NoGravity:1b,Silent:1b,Tags:["parkour-leash-knot"]}
summon leash_knot 829 124 486 {NoGravity:1b,Silent:1b,Tags:["parkour-leash-knot"]}
summon leash_knot 833 124 484 {NoGravity:1b,Silent:1b,Tags:["parkour-leash-knot"]}
summon leash_knot 832 124 483 {NoGravity:1b,Silent:1b,Tags:["parkour-leash-knot"]}
summon slime 830 124.3 487 {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"collisionless",Leashed:1b,PersistenceRequired:1b,NoAI:1b,Tags:["parkour-leash-knot","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Leash:{X:833,Y:124,Z:484}}
summon slime 829 124.3 486 {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"collisionless",Leashed:1b,PersistenceRequired:1b,NoAI:1b,Tags:["parkour-leash-knot","invisible"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],Leash:{X:832,Y:124,Z:483}}
team join collisionless @e[tag=parkour-leash-knot]