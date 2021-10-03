scoreboard players reset start story-intro
setblock 1012 59 64 minecraft:birch_door[facing=west,half=lower,hinge=right,open=false,powered=false]
setblock 1012 60 64 minecraft:birch_door[facing=west,half=upper,hinge=right,open=false,powered=false]

scoreboard players set basement_lock story-intro 1
function hitchhike:story/intro/lock_door