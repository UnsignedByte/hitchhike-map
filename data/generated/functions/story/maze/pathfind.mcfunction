kill @e[tag=maze-path-lit]
# Cleanup
schedule clear generated:story/maze/pathfind/selectcell
tag @e[type=marker,tag=maze-node] remove path-visited
tag @e[type=marker,tag=maze-node] remove path-activated
scoreboard players set @e[type=marker,tag=maze-node] maze-pathHcost 2147483647
scoreboard players set @e[type=marker,tag=maze-node] maze-pathTcost 2147483647
# set Gpos root
scoreboard players operation _goalx maze-pathGcost = @e[type=marker,tag=maze-node,tag=path-goal] maze-xpos
scoreboard players operation _goaly maze-pathGcost = @e[type=marker,tag=maze-node,tag=path-goal] maze-ypos
scoreboard players operation _goalz maze-pathGcost = @e[type=marker,tag=maze-node,tag=path-goal] maze-zpos
# activate start
scoreboard players set _tmpcost maze-pathHcost 0
scoreboard players set _tmp maze-path-parent -1
execute as @e[type=marker,tag=maze-node,tag=path-start] run function generated:story/maze/pathfind/activatecell
scoreboard players set batchsize maze-path 50
scoreboard players set _batchleft maze-path 0
function generated:story/maze/pathfind/selectcell
