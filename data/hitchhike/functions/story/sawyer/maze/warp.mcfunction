#> Warp player into the maze and start cutscene if necessary

tag @p add maze-warping
execute unless entity @a[tag=maze-mob] run tp @a[tag=maze-warping] @e[tag=maze-start,limit=1]
tp @a[tag=maze-warping] @r[tag=maze-mob]
tag @a[tag=maze-warping] add maze-mob
tag @a remove maze-warping

execute unless score maze-started story-sawyer matches 1 run function hitchhike:story/sawyer/maze/startseq