# This is now visited
tag @s add path-visited
tag @s remove path-activated
# get neighbors
function generated:story/maze/neighbors
scoreboard players operation _tmpcost maze-pathHcost = @s maze-pathHcost
scoreboard players add _tmpcost maze-pathHcost 1
# update parent if this is closer
scoreboard players set _tmp maze-path-parent 5
execute as @e[type=marker,tag=maze-marker,tag=!path-visited,tag=maze-neighbor-0] if score @s maze-pathHcost > _tmpcost maze-pathHcost run function generated:story/maze/pathfind/activatecell
# update parent if this is closer
scoreboard players set _tmp maze-path-parent 4
execute as @e[type=marker,tag=maze-marker,tag=!path-visited,tag=maze-neighbor-1] if score @s maze-pathHcost > _tmpcost maze-pathHcost run function generated:story/maze/pathfind/activatecell
# update parent if this is closer
scoreboard players set _tmp maze-path-parent 3
execute as @e[type=marker,tag=maze-marker,tag=!path-visited,tag=maze-neighbor-2] if score @s maze-pathHcost > _tmpcost maze-pathHcost run function generated:story/maze/pathfind/activatecell
# update parent if this is closer
scoreboard players set _tmp maze-path-parent 2
execute as @e[type=marker,tag=maze-marker,tag=!path-visited,tag=maze-neighbor-3] if score @s maze-pathHcost > _tmpcost maze-pathHcost run function generated:story/maze/pathfind/activatecell
# update parent if this is closer
scoreboard players set _tmp maze-path-parent 1
execute as @e[type=marker,tag=maze-marker,tag=!path-visited,tag=maze-neighbor-4] if score @s maze-pathHcost > _tmpcost maze-pathHcost run function generated:story/maze/pathfind/activatecell
# update parent if this is closer
scoreboard players set _tmp maze-path-parent 0
execute as @e[type=marker,tag=maze-marker,tag=!path-visited,tag=maze-neighbor-5] if score @s maze-pathHcost > _tmpcost maze-pathHcost run function generated:story/maze/pathfind/activatecell
