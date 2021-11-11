# We are at a node right now, turn to face the next one.

scoreboard players operation #tmp maze-path = @e[tag=maze-node,scores={maze-path=0..},distance=..0.01,limit=1] maze-path
execute if score #tmp maze-path matches 0 run scoreboard players operation #tmp maze-path = length maze-path
scoreboard players remove #tmp maze-path 1

execute as @e[tag=maze-node,sort=nearest,distance=1..,limit=6] if score @s maze-path = #tmp maze-path run tag @s add maze-selected-next

execute positioned ~ ~ ~ facing entity @e[tag=maze-selected-next,limit=1] feet run tp @s ~ ~ ~ ~ ~

tag @e remove maze-selected-next

scoreboard players add #tmp maze-path 1

execute if score #tmp maze-path = length maze-path positioned as @e[tag=path-start,limit=1] run tp @s ^ ^ ^-0.5