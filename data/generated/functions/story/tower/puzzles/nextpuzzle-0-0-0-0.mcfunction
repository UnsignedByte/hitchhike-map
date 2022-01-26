#> Check puzzle and advance if passed
execute as @e[tag=tower-puzzle] if score @s tower-puzzle-id = loadid tower-puzzle-id at @s run function generated:story/tower/puzzles/_nextpuzzle
