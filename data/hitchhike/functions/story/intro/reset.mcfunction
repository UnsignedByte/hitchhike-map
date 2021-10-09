scoreboard players reset start story-intro

function generated:story/intro/_resettv

setblock 1005 63 52 redstone_block
setblock 1011 63 52 redstone_block
setblock 1011 63 66 redstone_block
setblock 1005 63 66 redstone_block

fill 1012 59 64 1012 60 64 air
setblock 1012 59 64 minecraft:birch_door[facing=east,half=lower,hinge=right,open=false,powered=false]
setblock 1012 60 64 minecraft:birch_door[facing=east,half=upper,hinge=right,open=false,powered=false]

function hitchhike:story/intro/unlock_basement_door
function hitchhike:story/intro/lock_basement_door

function hitchhike:story/intro/unlock_external_doors

function hitchhike:story/intro/await_start

# Reset barrel in spawn room
setblock 1009 65 57 minecraft:barrel[facing=west,open=false]{Items:[{Count:1b,Slot:24b,id:"minecraft:paper",tag:{display:{Lore:['{"text":"The keys are hidden","color":"gray"}','{"text":"behind the big map!","color":"gray"}','{"text":"Don\'t Forget!","color":"gray"}','{"text":" "}','{"text":"Love,","color":"gray"}'],Name:'{"text":"Reminder"}'}}}]}

schedule clear hitchhike:story/intro/detect_barrel_open

# Close opening behind painting
fill 1021 67 62 1021 68 62 minecraft:green_terracotta