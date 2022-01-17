function generated:quests/tick/q-11-0-0
function generated:quests/tick/q-11-0-1
scoreboard players set - q-11 0
execute if score q-11-0-0 q-11 = oq-11-0-0 q-11 if score q-11-0-1 q-11 = oq-11-0-1 q-11 run scoreboard players set - q-11 1
execute if score - q-11 matches 0 run function generated:quests/tick/q-11-0
scoreboard players set - q-11 0
execute if score q-11-0 q-11 = oq-11-0 q-11 run scoreboard players set - q-11 1
execute if score - q-11 matches 0 run function generated:quests/tick/q-11
scoreboard players operation grillfish quest-status = q-11 q-11
execute if score grillfish quest-status matches 100 run function generated:quests/grillfish-end
