# Update parent
scoreboard players operation @s maze-path-parent = _tmp maze-path-parent
#> update cost of given cell
scoreboard players operation @s maze-pathHcost < _tmpcost maze-pathHcost
# Calculate G cost if it has never been done before
execute unless entity @s[tag=path-activated] as @s run function generated:story/maze/pathfind/getg
scoreboard players operation @s maze-pathTcost = @s maze-pathHcost
scoreboard players operation @s maze-pathTcost += @s maze-pathGcost
tag @s add path-activated
