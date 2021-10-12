#> update cost of given cell
scoreboard players operation @s maze-pathHcost < _tmpcost maze-pathHcost
scoreboard players operation @s maze-pathTcost = @s maze-pathHcost
# Calculate G cost if it has never been done before
execute if score @s maze-pathGcost matches 2147483647 as @s run function generated:story/maze/pathfind/getg
scoreboard players operation @s maze-pathTcost += @s maze-pathGcost
