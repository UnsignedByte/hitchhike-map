function generated:quests/tick/q-12-0-0
function generated:quests/tick/q-12-0-1
scoreboard players set - q-12 0
execute if score q-12-0-0 q-12 = oq-12-0-0 q-12 if score q-12-0-1 q-12 = oq-12-0-1 q-12 run scoreboard players set - q-12 1
execute if score - q-12 matches 0 run function generated:quests/tick/q-12-0
scoreboard players set - q-12 0
execute if score q-12-0 q-12 = oq-12-0 q-12 run scoreboard players set - q-12 1
execute if score - q-12 matches 0 run function generated:quests/tick/q-12
scoreboard players operation grillfish quest-status = q-12 q-12
execute if score grillfish quest-status matches 100 run function generated:quests/grillfish-end
