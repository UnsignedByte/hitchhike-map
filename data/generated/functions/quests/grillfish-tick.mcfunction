function generated:quests/tick/q-10-0-0
function generated:quests/tick/q-10-0-1
scoreboard players set - q-10 0
execute if score q-10-0-0 q-10 = oq-10-0-0 q-10 if score q-10-0-1 q-10 = oq-10-0-1 q-10 run scoreboard players set - q-10 1
execute if score - q-10 matches 0 run function generated:quests/tick/q-10-0
scoreboard players set - q-10 0
execute if score q-10-0 q-10 = oq-10-0 q-10 run scoreboard players set - q-10 1
execute if score - q-10 matches 0 run function generated:quests/tick/q-10
scoreboard players operation grillfish quest-status = q-10 q-10
execute if score grillfish quest-status matches 100 run function generated:quests/grillfish-end
