summon marker -2000 50 100 {Tags:["tower-puzzle", "tower-puzzle-init"]}
scoreboard players set @e[tag=tower-puzzle-init] tower-puzzle-id 0
execute as @e[tag=tower-puzzle-init] at @s run function generated:story/tower/puzzles/init_indiv
tag @e remove tower-puzzle-init
summon marker -1980 50 100 {Tags:["tower-puzzle", "tower-puzzle-init"]}
scoreboard players set @e[tag=tower-puzzle-init] tower-puzzle-id 1
execute as @e[tag=tower-puzzle-init] at @s run function generated:story/tower/puzzles/init_indiv
tag @e remove tower-puzzle-init
summon marker -1960 50 100 {Tags:["tower-puzzle", "tower-puzzle-init"]}
scoreboard players set @e[tag=tower-puzzle-init] tower-puzzle-id 2
execute as @e[tag=tower-puzzle-init] at @s run function generated:story/tower/puzzles/init_indiv
tag @e remove tower-puzzle-init
summon marker -1940 50 100 {Tags:["tower-puzzle", "tower-puzzle-init"]}
scoreboard players set @e[tag=tower-puzzle-init] tower-puzzle-id 3
execute as @e[tag=tower-puzzle-init] at @s run function generated:story/tower/puzzles/init_indiv
tag @e remove tower-puzzle-init
