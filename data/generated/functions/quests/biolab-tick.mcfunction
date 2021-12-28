function generated:quests/tick/q-7-0-0
function generated:quests/tick/q-7-0-1
scoreboard players set - q-7 0
execute if score q-7-0-0 q-7 = oq-7-0-0 q-7 if score q-7-0-1 q-7 = oq-7-0-1 q-7 run scoreboard players set - q-7 1
execute if score - q-7 matches 0 run function generated:quests/tick/q-7-0
scoreboard players set - q-7 0
execute if score q-7-0 q-7 = oq-7-0 q-7 run scoreboard players set - q-7 1
execute if score - q-7 matches 0 run function generated:quests/tick/q-7
scoreboard players operation biolab quest-status = q-7 q-7
execute if score biolab quest-status matches 100 run function generated:quests/biolab-end
