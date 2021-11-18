#> Starts the next boss sequence

scoreboard players set @e[tag=npc-sawyer] dialogue-status 6
scoreboard players operation @e[tag=npc-sawyer] dialogue-status += maze-stage story-sawyer
tag @e[tag=npc-sawyer] add selected_npc
execute at @e[tag=maze-boss,limit=1] run tag @p add npc_selector

execute as @e[type=maze-boss] run function hitchhike:kill

function hitchhike:story/maze/pathfind/genpath