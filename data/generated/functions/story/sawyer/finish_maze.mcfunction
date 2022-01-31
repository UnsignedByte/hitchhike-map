function hitchhike:story/maze/disable
tellraw @a {"score":{"name":"enabled","objective":"maze"}}
schedule function generated:story/sawyer/finish_maze-0 1500t
