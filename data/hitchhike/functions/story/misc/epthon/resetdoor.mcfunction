execute unless block 975 64 -5 minecraft:dark_oak_door[facing=north,half=lower,hinge=left,open=false,powered=false] run playsound block.wooden_door.close block @a 975.5 64 -4.5 2 0.8

#> Door
fill 975 64 -5 975 65 -5 air
setblock 975 64 -5 minecraft:dark_oak_door[facing=north,half=lower,hinge=left,open=false,powered=false]
setblock 975 65 -5 minecraft:dark_oak_door[facing=north,half=upper,hinge=left,open=false,powered=false]