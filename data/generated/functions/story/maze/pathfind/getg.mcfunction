#> Get G cost of a given marker
execute as @s run function generated:story/maze/getPos
# Use euclidian distance
scoreboard players operation _tmpx maze-pathGcost = _markerx maze
scoreboard players operation _tmpy maze-pathGcost = _markery maze
scoreboard players operation _tmpz maze-pathGcost = _markerz maze
# Subtract distance of goal
execute as @e[type=marker,tag=path-goal] run function generated:story/maze/getPos
scoreboard players operation _tmpx maze-pathGcost -= _markerx maze
scoreboard players operation _tmpy maze-pathGcost -= _markery maze
scoreboard players operation _tmpz maze-pathGcost -= _markerz maze
# get absolute value
execute if score _tmpx maze-pathGcost matches ..-1 run scoreboard players operation _tmpx maze-pathGcost *= -1 const
execute if score _tmpy maze-pathGcost matches ..-1 run scoreboard players operation _tmpy maze-pathGcost *= -1 const
execute if score _tmpz maze-pathGcost matches ..-1 run scoreboard players operation _tmpz maze-pathGcost *= -1 const
# add to total cost
scoreboard players operation @s maze-pathGcost = _tmpx maze-pathGcost
scoreboard players operation @s maze-pathGcost += _tmpy maze-pathGcost
scoreboard players operation @s maze-pathGcost += _tmpz maze-pathGcost
