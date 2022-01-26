kill @e[tag=tower-puzzle]

scoreboard players set loadid tower-puzzle-id -1
scoreboard players set interim tower-puzzle-id 0

function generated:story/tower/puzzles/init