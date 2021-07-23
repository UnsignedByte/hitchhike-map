scoreboard objectives add const dummy
scoreboard objectives add bed dummy
scoreboard objectives add door dummy
scoreboard objectives add rand dummy
scoreboard objectives add neighbours dummy

scoreboard objectives add boots dummy
scoreboard objectives add leggings dummy
scoreboard objectives add chestplate dummy
scoreboard objectives add helmet dummy
scoreboard objectives add hoe dummy
scoreboard objectives add sword dummy
scoreboard objectives add axe dummy
scoreboard objectives add shovel dummy
scoreboard objectives add pickaxe dummy

# starting age of area effect cloud
scoreboard players set age const 100

forceload add 0 0

kill @e[tag=rand]

summon armor_stand 1 -10 1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rand"]}
summon armor_stand 2 -10 1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rand"]}
summon armor_stand 3 -10 1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rand"]}
summon armor_stand 4 -10 1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["rand"]}