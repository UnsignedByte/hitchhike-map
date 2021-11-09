scoreboard players operation #tmp maze-connections = @s maze-connections
execute as @e[tag=maze-tile] if score @s maze-connections = #tmp maze-connections run tag @s add maze-tile-selectable
execute at @e[tag=maze-tile-selectable,sort=random,limit=1] run clone ~-4 ~-4 ~-4 ~4 ~4 ~4 -1004 196 -4
clone -1004 196 -4 -996 204 4 ~-4 ~-4 ~-4 
tag @e[tag=maze-tile] remove maze-tile-selectable
tag @s remove maze-visited
