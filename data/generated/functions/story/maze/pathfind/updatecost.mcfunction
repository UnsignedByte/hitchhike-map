#> update cost of given cell
scoreboard players operation @s maze-pathRcost < _tmpcost maze-pathRcost
scoreboard players operation @s maze-pathTcost = @s maze-pathRcost
# Calculate G cost if it has never been done before
execute if score @s maze-pathGcost matches 2147483647 as @s run function generated:story/maze/pathfind/getg
scoreboard players operation @s maze-pathTcost += @s maze-pathGcost
