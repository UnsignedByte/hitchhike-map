execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,NoAI:1,Glowing:1,Tags:["maze-path-lit"],Team:"blue"}
#> Get G cost of a given marker
execute as @s run function generated:story/maze/getpos
# Use euclidian distance
scoreboard players operation _tmpx maze-pathGcost = @s maze-xpos
scoreboard players operation _tmpy maze-pathGcost = @s maze-ypos
scoreboard players operation _tmpz maze-pathGcost = @s maze-zpos
# Subtract distance of nearest goal
scoreboard players operation _tmpx maze-pathGcost -= @e[type=marker,tag=maze-node,tag=path-goal,sort=nearest,limit=1] maze-xpos
scoreboard players operation _tmpy maze-pathGcost -= @e[type=marker,tag=maze-node,tag=path-goal,sort=nearest,limit=1] maze-ypos
scoreboard players operation _tmpz maze-pathGcost -= @e[type=marker,tag=maze-node,tag=path-goal,sort=nearest,limit=1] maze-zpos
# get absolute value
execute if score _tmpx maze-pathGcost matches ..-1 run scoreboard players operation _tmpx maze-pathGcost *= -1 const
execute if score _tmpy maze-pathGcost matches ..-1 run scoreboard players operation _tmpy maze-pathGcost *= -1 const
execute if score _tmpz maze-pathGcost matches ..-1 run scoreboard players operation _tmpz maze-pathGcost *= -1 const
# add to total cost
scoreboard players operation @s maze-pathGcost = _tmpx maze-pathGcost
scoreboard players operation @s maze-pathGcost += _tmpy maze-pathGcost
scoreboard players operation @s maze-pathGcost += _tmpz maze-pathGcost
