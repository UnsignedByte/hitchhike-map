#> Reset doors

fill 1078 125 350 1078 126 350 air
setblock 1078 125 350 minecraft:dark_oak_door[facing=north,half=lower,hinge=left,open=false,powered=false]
setblock 1078 126 350 minecraft:dark_oak_door[facing=north,half=upper,hinge=left,open=false,powered=false]

fill 1078 125 359 1078 126 359 air
setblock 1078 126 359 minecraft:dark_oak_door[facing=south,half=upper,hinge=right,open=false,powered=false]
setblock 1078 125 359 minecraft:dark_oak_door[facing=south,half=lower,hinge=right,open=false,powered=false]

scoreboard players set start story-hurm 0
function hitchhike:story/hurm/await_start

tag @a remove hurm-selected