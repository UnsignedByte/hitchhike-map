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
setblock 986 237 563 minecraft:lever[face=floor,facing=south,powered=false]
setblock 990 233 566 minecraft:lever[face=wall,facing=east,powered=true]
setblock 989 233 567 minecraft:lever[face=wall,facing=south,powered=true]
setblock 990 231 566 minecraft:lever[face=wall,facing=east,powered=true]
setblock 989 231 567 minecraft:lever[face=wall,facing=south,powered=true]
setblock 989 220 562 minecraft:lever[face=wall,facing=east,powered=false]