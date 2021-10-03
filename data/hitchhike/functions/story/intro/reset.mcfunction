scoreboard players reset start story-intro

function generated:story/intro/_resettv

setblock 1005 63 52 redstone_block
setblock 1011 63 52 redstone_block
setblock 1011 63 66 redstone_block
setblock 1005 63 66 redstone_block

fill 1012 59 64 1012 60 64 air
setblock 1012 59 64 minecraft:birch_door[facing=east,half=lower,hinge=right,open=false,powered=false]
setblock 1012 60 64 minecraft:birch_door[facing=east,half=upper,hinge=right,open=false,powered=false]

function hitchhike:story/intro/unlock_door
function hitchhike:story/intro/lock_door

function hitchhike:story/intro/await_start