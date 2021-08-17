function generated:quests/tick/q-0-0
execute store success score - q-0 if score q-0-0 q-0 = oq-0-0 q-0
execute if score - q-0 matches 0 run function generated:quests/tick/q-0
function generated:quests/tick/q-0
scoreboard players operation bread quest-status = q-0 q-0
