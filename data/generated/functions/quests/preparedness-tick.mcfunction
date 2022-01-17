function generated:quests/tick/q-4-0-0
function generated:quests/tick/q-4-0-1
scoreboard players set - q-4 0
execute if score q-4-0-0 q-4 = oq-4-0-0 q-4 if score q-4-0-1 q-4 = oq-4-0-1 q-4 run scoreboard players set - q-4 1
execute if score - q-4 matches 0 run function generated:quests/tick/q-4-0
scoreboard players set - q-4 0
execute if score q-4-0 q-4 = oq-4-0 q-4 run scoreboard players set - q-4 1
execute if score - q-4 matches 0 run function generated:quests/tick/q-4
scoreboard players operation preparedness quest-status = q-4 q-4
execute if score preparedness quest-status matches 100 run function generated:quests/preparedness-end
