execute unless score start story-intro matches 1 run function hitchhike:story/intro/start
playsound minecraft:block.wooden_door.close block @a 1012.5 60 64.5 1 1

fill 1012 59 64 1012 60 64 air
setblock 1012 59 64 minecraft:birch_door[facing=west,half=lower,hinge=right,open=false,powered=false]
setblock 1012 60 64 minecraft:birch_door[facing=west,half=upper,hinge=right,open=false,powered=false]