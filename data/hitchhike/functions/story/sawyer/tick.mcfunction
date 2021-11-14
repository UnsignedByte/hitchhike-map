execute if score -held story-sawyer matches 1 at @e[tag=sawyer-holder,limit=1] run tp @e[tag=npc-sawyer] ~ ~30 ~ ~90 0
execute if score -held story-sawyer matches -1 at @e[tag=sawyer-holder,limit=1] run tp @e[tag=npc-sawyer] ~ ~30 ~ ~-90 0

execute if score enabled maze matches 1 run function hitchhike:story/sawyer/maze/tick