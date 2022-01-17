function generated:quests/tick/q-3-0-0
function generated:quests/tick/q-3-0-1
scoreboard players set - q-3 0
execute if score q-3-0-0 q-3 = oq-3-0-0 q-3 if score q-3-0-1 q-3 = oq-3-0-1 q-3 run scoreboard players set - q-3 1
execute if score - q-3 matches 0 run function generated:quests/tick/q-3-0
scoreboard players set - q-3 0
execute if score q-3-0 q-3 = oq-3-0 q-3 run scoreboard players set - q-3 1
execute if score - q-3 matches 0 run function generated:quests/tick/q-3
scoreboard players operation preparedness quest-status = q-3 q-3
execute if score preparedness quest-status matches 100 run function generated:quests/preparedness-end
