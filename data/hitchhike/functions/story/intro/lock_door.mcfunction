# lock basement door
fill 1013 59 64 1013 60 64 barrier replace air

# start the intro if we try to leave
execute if block 1012 59 64 minecraft:birch_door[facing=west,half=lower,hinge=right,open=true,powered=false] unless score start story-intro matches 1 run function hitchhike:story/intro/start

setblock 1012 59 64 minecraft:birch_door[facing=west,half=lower,hinge=right,open=false,powered=false]
setblock 1012 60 64 minecraft:birch_door[facing=west,half=upper,hinge=right,open=false,powered=false]
playsound minecraft:block.wooden_door.close block @a 1012.5 60 64.5 1 1

execute if score basement_lock story-intro matches 0 run function hitchhike:story/intro/unlock_door
execute if score basement_lock story-intro matches 1 run schedule function hitchhike:story/intro/lock_door 1t