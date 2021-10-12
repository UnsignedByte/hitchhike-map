# set Gpos root
scoreboard players operation _goalx maze-pathGcost = @e[type=marker,tag=maze-marker,tag=path-goal] maze-xpos
scoreboard players operation _goaly maze-pathGcost = @e[type=marker,tag=maze-marker,tag=path-goal] maze-ypos
scoreboard players operation _goalz maze-pathGcost = @e[type=marker,tag=maze-marker,tag=path-goal] maze-zpos
scoreboard players set @e[type=marker,tag=maze-marker] maze-pathGcost 2147483647
scoreboard players set @e[type=marker,tag=maze-marker] maze-pathRcost 2147483647
scoreboard players set @e[type=marker,tag=maze-marker] maze-pathTcost 2147483647
scoreboard players set _tmpcost maze-pathRcost 0
scoreboard players set _tmp maze-path-parent -1
execute as @e[type=marker,tag=maze-marker,tag=path-start] run function generated:story/maze/pathfind/activatecell
function generated:story/maze/pathfind/selectcell
