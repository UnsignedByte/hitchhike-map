scoreboard players set #tmp maze 0
execute store success score #tmp maze at @e[tag=path-goal,tag=maze-node] positioned ~-4 ~-4 ~-4 if entity @a[dx=9,dz=9,dy=9] run function hitchhike:story/sawyer/maze/goalreached
execute if score #tmp maze matches 0 run schedule function generated:story/sawyer/maze/awaitpathend 5t
