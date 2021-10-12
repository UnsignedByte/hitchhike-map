execute at @s run team join magenta @e[tag=maze-path-lit,sort=nearest,limit=1]
#> Propogate through path recursively
scoreboard players operation @s maze-path = length maze-path
scoreboard players add length maze-path 1
execute if score @s maze-path-parent matches 0 at @s positioned ~8 ~0 ~0 as @e[type=marker,tag=maze-node,tag=maze-node,distance=..0.01,sort=nearest,limit=1] run function maze/pathfind/_pathgetnext
execute if score @s maze-path-parent matches 1 at @s positioned ~0 ~8 ~0 as @e[type=marker,tag=maze-node,tag=maze-node,distance=..0.01,sort=nearest,limit=1] run function maze/pathfind/_pathgetnext
execute if score @s maze-path-parent matches 2 at @s positioned ~0 ~0 ~8 as @e[type=marker,tag=maze-node,tag=maze-node,distance=..0.01,sort=nearest,limit=1] run function maze/pathfind/_pathgetnext
execute if score @s maze-path-parent matches 3 at @s positioned ~0 ~0 ~-8 as @e[type=marker,tag=maze-node,tag=maze-node,distance=..0.01,sort=nearest,limit=1] run function maze/pathfind/_pathgetnext
execute if score @s maze-path-parent matches 4 at @s positioned ~0 ~-8 ~0 as @e[type=marker,tag=maze-node,tag=maze-node,distance=..0.01,sort=nearest,limit=1] run function maze/pathfind/_pathgetnext
execute if score @s maze-path-parent matches 5 at @s positioned ~-8 ~0 ~0 as @e[type=marker,tag=maze-node,tag=maze-node,distance=..0.01,sort=nearest,limit=1] run function maze/pathfind/_pathgetnext
