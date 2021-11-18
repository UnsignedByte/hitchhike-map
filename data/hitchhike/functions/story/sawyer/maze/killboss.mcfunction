#> Starts the next boss sequence

scoreboard players set @e[tag=npc-sawyer] dialogue-status 6
scoreboard players operation @e[tag=npc-sawyer] dialogue-status += maze-stage story-sawyer
tag @e[tag=npc-sawyer] add selected_npc
execute at @e[tag=maze-boss,limit=1] run tag @p add npc_selector

execute at @e[tag=path-goal] run tag @e[tag=maze-node,scores={maze-tile-type=1..}] add maze-visited
execute at @e[tag=path-goal] run tag @e[tag=maze-visited,sort=furthest,limit=100] remove maze-visited
execute unless score maze-stage story-sawyer matches 3.. as @e[tag=maze-visited] unless predicate hitchhike:onethird run tag @s remove maze-visited
scoreboard players set @e[tag=maze-visited] maze-tile-type 0
scoreboard players operation batchsize maze = size maze
function generated:story/maze/create/_loadcellbatch

tag @e remove path-goal

execute unless score maze-stage story-sawyer matches 3.. run schedule function hitchhike:story/maze/pathfind/genpath 1t

execute as @e[tag=maze-boss] run function hitchhike:kill
bossbar set maze:boss visible false