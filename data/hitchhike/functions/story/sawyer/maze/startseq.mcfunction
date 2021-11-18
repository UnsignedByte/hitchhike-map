#> Starts the main sd card sequence

scoreboard players set maze-started story-sawyer 1
scoreboard players set maze-stage story-sawyer 0

scoreboard players set @e[tag=npc-sawyer] dialogue-status 6
tag @e[tag=npc-sawyer] add selected_npc
execute at @e[tag=maze-start,limit=1] run tag @p add npc_selector

function hitchhike:story/maze/pathfind/genpath

function generated:story/sawyer/maze/awaitpathend