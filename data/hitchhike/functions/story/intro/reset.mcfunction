scoreboard players reset start story-intro

fill 1012 59 64 1012 60 64 air
setblock 1012 59 64 minecraft:birch_door[facing=west,half=lower,hinge=right,open=false,powered=false]
setblock 1012 60 64 minecraft:birch_door[facing=west,half=upper,hinge=right,open=false,powered=false]

function hitchhike:story/intro/unlock_door
function hitchhike:story/intro/lock_door

function hitchhike:story/intro/await_start