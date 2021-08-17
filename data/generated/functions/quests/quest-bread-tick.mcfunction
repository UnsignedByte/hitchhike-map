function generated:quests/tick/q-0-0
scoreboard players set - q-0 0
execute if score q-0-0 q-0 = oq-0-0 q-0 run scoreboard players set - q-0 1
execute if score - q-0 matches 0 run function generated:quests/tick/q-0
function generated:quests/tick/q-0
scoreboard players operation bread quest-status = q-0 q-0
