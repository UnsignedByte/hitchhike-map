#> Get G cost of a given marker
execute as @s run function generated:story/maze/getpos
# Use euclidian distance
scoreboard players operation _tmpx maze-pathGcost = @s maze-xpos
scoreboard players operation _tmpy maze-pathGcost = @s maze-ypos
scoreboard players operation _tmpz maze-pathGcost = @s maze-zpos
# Subtract distance of goal
scoreboard players operation _tmpx maze-pathGcost -= _goalx maze-pathGcost
scoreboard players operation _tmpy maze-pathGcost -= _goaly maze-pathGcost
scoreboard players operation _tmpz maze-pathGcost -= _goalz maze-pathGcost
# get absolute value
execute if score _tmpx maze-pathGcost matches ..-1 run scoreboard players operation _tmpx maze-pathGcost *= -1 const
execute if score _tmpy maze-pathGcost matches ..-1 run scoreboard players operation _tmpy maze-pathGcost *= -1 const
execute if score _tmpz maze-pathGcost matches ..-1 run scoreboard players operation _tmpz maze-pathGcost *= -1 const
# add to total cost
scoreboard players operation @s maze-pathGcost = _tmpx maze-pathGcost
scoreboard players operation @s maze-pathGcost += _tmpy maze-pathGcost
scoreboard players operation @s maze-pathGcost += _tmpz maze-pathGcost
