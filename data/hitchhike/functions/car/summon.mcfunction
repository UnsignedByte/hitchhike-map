summon minecart ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["car","car-root","car-init"]}

summon minecart ~ ~ ~ {Tags:["car","car-render","car-init","basel1"],CustomDisplayTile:1b,DisplayOffset:216,DisplayState:{Name:"minecraft:red_wool"}}
summon minecart ~ ~ ~ {Tags:["car","car-render","car-init","basel2"],CustomDisplayTile:1b,DisplayOffset:216,DisplayState:{Name:"minecraft:red_wool"}}
summon minecart ~ ~ ~ {Tags:["car","car-render","car-init","basel3"],CustomDisplayTile:1b,DisplayOffset:216,DisplayState:{Name:"minecraft:red_wool"}}
summon minecart ~ ~ ~ {Tags:["car","car-render","car-init","baser1"],CustomDisplayTile:1b,DisplayOffset:216,DisplayState:{Name:"minecraft:red_wool"}}
summon minecart ~ ~ ~ {Tags:["car","car-render","car-init","baser2"],CustomDisplayTile:1b,DisplayOffset:216,DisplayState:{Name:"minecraft:red_wool"}}
summon minecart ~ ~ ~ {Tags:["car","car-render","car-init","baser3"],CustomDisplayTile:1b,DisplayOffset:216,DisplayState:{Name:"minecraft:red_wool"}}

scoreboard players operation @e[tag=car-init] car-id = - car-id
scoreboard players add - car-id 1

tag @e[tag=car-init] remove car-init