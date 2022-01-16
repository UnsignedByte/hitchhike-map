function hitchhike:story/maze/disable
tp @a 952 70 -1
spawnpoint @a 1007 59 59
time set 11500
gamerule doDaylightCycle true
schedule function generated:story/sawyer/finish_maze-0 1500t
