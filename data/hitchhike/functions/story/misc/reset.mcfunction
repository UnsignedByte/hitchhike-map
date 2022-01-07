function hitchhike:story/misc/epthon/resetdoor

scoreboard players set epthon-talking vars 0

tag @e[tag=npc-duanerocque] add npc-unface

data merge entity @e[tag=npc-maisebovat,limit=1] {SleepingX:970,SleepingY:70,SleepingZ:4}