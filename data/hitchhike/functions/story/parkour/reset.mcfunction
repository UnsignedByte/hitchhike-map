scoreboard objectives remove checkpoint-id
scoreboard objectives add checkpoint-id dummy
kill @e[tag=checkpoint-marker]
function generated:story/parkour/summoncheckpoints

# Reset tower parkour
setblock 986 237 563 minecraft:lever[face=floor,facing=south,powered=false]
setblock 990 233 566 minecraft:lever[face=wall,facing=east,powered=true]
setblock 989 233 567 minecraft:lever[face=wall,facing=south,powered=true]
setblock 990 231 566 minecraft:lever[face=wall,facing=east,powered=true]
setblock 989 231 567 minecraft:lever[face=wall,facing=south,powered=true]