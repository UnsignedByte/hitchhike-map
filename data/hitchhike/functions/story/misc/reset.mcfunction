function hitchhike:story/misc/epthon/resetdoor

scoreboard players set epthon-talking vars 0

tag @e[tag=npc-duanerocque] add npc-unface

execute if block 973 70 2 minecraft:dark_oak_door[facing=west,half=lower,hinge=right,open=false,powered=false] run data merge entity @e[tag=npc-maisebovat,limit=1] {SleepingX:970,SleepingY:70,SleepingZ:4}
execute unless block 973 70 2 minecraft:dark_oak_door[facing=west,half=lower,hinge=right,open=false,powered=false] run data merge entity @e[tag=npc-maisebovat,limit=1,nbt={SleepingX:970,SleepingY:70,SleepingZ:4}] {SleepingX:970,SleepingY:69,SleepingZ:2}
execute unless block 973 70 2 minecraft:dark_oak_door[facing=west,half=lower,hinge=right,open=false,powered=false] run tp @e[tag=!maisebovat-awoken,tag=npc-maisebovat,limit=1,nbt=!{SleepingX:970,SleepingY:70,SleepingZ:4}] 970 70 2 -90 0
tag @e[tag=npc-maisebovat,limit=1,nbt=!{SleepingX:970,SleepingY:70,SleepingZ:4}] add maisebovat-awoken