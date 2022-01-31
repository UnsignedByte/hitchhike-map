function hitchhike:story/maze/disable
tp @a[tag=!admin] 952 70 -1
spawnpoint @a 1007 59 59
time set 11500
gamerule doDaylightCycle true
tellraw @a {"score":{"name":"enabled","objective":"maze"}}
schedule function generated:story/sawyer/finish_maze-0 1500t
