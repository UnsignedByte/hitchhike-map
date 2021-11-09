#> Insert adjacent cell into maze
tag @s remove maze-adjacent
function generated:story/maze/neighbors
# Add neighbors to adjacent list
tag @e[type=marker,tag=maze-node,tag=maze-neighbor,tag=!maze-visited] add maze-adjacent
# Select random node in maze to connect to from neighbors
tag @e[type=marker,tag=maze-node,tag=maze-neighbor,tag=maze-visited,sort=random,limit=1] add maze-connect
execute as @s run function generated:story/maze/create/_deletewall
# add self to maze
execute store result score #tmp maze run bossbar get minecraft:maze value
execute store result score #tmpmax maze run bossbar get minecraft:maze max
scoreboard players operation #tmp maze *= 100 const
scoreboard players operation #tmp maze /= #tmpmax maze
execute if score #tmp maze matches ..49 run scoreboard players set @s maze-tile-type 0
execute if score #tmp maze matches 50..69 run scoreboard players set @s maze-tile-type 1
execute if score #tmp maze matches 70.. run scoreboard players set @s maze-tile-type 2
tag @s remove maze-adjacent
tag @s add maze-visited
