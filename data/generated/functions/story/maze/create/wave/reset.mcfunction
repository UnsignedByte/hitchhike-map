forceload add -1005 -10 -635 30
kill @e[tag=maze-tile]
execute as @e[tag=maze-tile-init] at @s run function generated:story/maze/create/wave/rotate
