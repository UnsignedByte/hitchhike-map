function hitchhike:story/misc/epthon/resetdoor

scoreboard players set epthon-talking vars 0

tag @e[tag=npc-duarteeisenhower] add npc-unface

tag @e[tag=npc-duanerocque] add npc-unface

tag @e[tag=npc-levirosman] add npc-unface
tag @e[tag=npc-ericrosman] add npc-unface

tag @e[tag=npc-stephen] add npc-unface
tag @e[tag=npc-matthew] add npc-unface
tag @e[tag=npc-damien] add npc-unface

tag @e[tag=npc-douglassainsworth] add npc-unface

tag @e[tag=npc-nortonhill] add npc-unface

tag @e[tag=npc-patriciagoldstein] add npc-unface

fill 973 70 2 973 71 2 air
setblock 973 71 2 minecraft:dark_oak_door[facing=west,half=upper,hinge=right,open=false,powered=false]
setblock 973 70 2 minecraft:dark_oak_door[facing=west,half=lower,hinge=right,open=false,powered=false]

data merge entity @e[tag=npc-maisebovat,limit=1] {SleepingX:970,SleepingY:70,SleepingZ:4}

data merge entity @e[tag=npc-barteisenhower,limit=1] {SleepingX:1049,SleepingY:65,SleepingZ:-52}


function hitchhike:story/misc/lobby/reset

scoreboard objectives remove song-playing
scoreboard objectives add song-playing dummy