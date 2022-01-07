function hitchhike:story/misc/epthon/resetdoor

scoreboard players set epthon-talking vars 0

tag @e[tag=npc-duanerocque] add npc-unface

fill 973 70 2 973 71 2 air
setblock 973 71 2 minecraft:dark_oak_door[facing=west,half=upper,hinge=right,open=false,powered=false]
setblock 973 70 2 minecraft:dark_oak_door[facing=west,half=lower,hinge=right,open=false,powered=false]