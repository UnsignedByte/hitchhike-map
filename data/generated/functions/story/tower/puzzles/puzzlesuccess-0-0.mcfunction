scoreboard players add loadid tower-puzzle-id 1
execute unless score loadid tower-puzzle-id matches 8.. run function generated:story/tower/puzzles/loadpuzzle
execute if score loadid tower-puzzle-id matches 8.. run function hitchhike:story/tower/puzzles/end
