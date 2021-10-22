#> Remove n random walls from the maze
scoreboard players add bossbar maze 1
execute store result bossbar minecraft:maze value run scoreboard players get bossbar maze
scoreboard players operation _batchleft maze = batchsize maze
scoreboard players remove _removeleft 1
function generated:story/maze/create/_removerandomwalls
execute unless score _removeleft maze matches 0 run schedule function generated:story/maze/create/removerandomwalls 1t
