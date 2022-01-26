#> load the puzzle with the id "loadid tower-puzzle-id"
execute as @e[tag=tower-puzzle] if score @s tower-puzzle-id = loadid tower-puzzle-id at @s run function generated:story/tower/puzzles/_loadpuzzle
