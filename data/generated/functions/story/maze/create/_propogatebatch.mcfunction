scoreboard players operation _batchleft maze = batchsize maze
function generated:story/maze/create/_propogate
execute unless score _batchleft maze matches ..-1 run schedule function generated:story/maze/create/_propogatebatch 1t
execute if score _batchleft maze matches ..-1 run function generated:story/maze/create/_generatecleanup
