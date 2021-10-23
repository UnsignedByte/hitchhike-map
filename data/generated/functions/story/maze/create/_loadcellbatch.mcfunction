scoreboard players operation _batchleft maze = batchsize maze
scoreboard players add bossbar maze 1
execute store result bossbar minecraft:maze value run scoreboard players get bossbar maze
function generated:story/maze/create/_loadcells
execute unless score _batchleft maze matches ..-1 run schedule function generated:story/maze/create/_loadcellbatch 1t
execute if score _batchleft maze matches ..-1 run function generated:story/maze/create/_cleanupall
