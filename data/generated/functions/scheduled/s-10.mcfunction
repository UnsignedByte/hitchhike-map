execute as @e[tag=maze-path-display,type=marker] at @s run function hitchhike:story/maze/displaytick
function generated:story/maze/mobs/move
schedule function generated:scheduled/s-10 10t
