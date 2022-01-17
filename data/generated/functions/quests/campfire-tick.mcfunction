function generated:quests/tick/q-10-0-0
function generated:quests/tick/q-10-0-1
function generated:quests/tick/q-10-0-2
function generated:quests/tick/q-10-0-3
scoreboard players set - q-10 0
execute if score q-10-0-0 q-10 = oq-10-0-0 q-10 if score q-10-0-1 q-10 = oq-10-0-1 q-10 if score q-10-0-2 q-10 = oq-10-0-2 q-10 if score q-10-0-3 q-10 = oq-10-0-3 q-10 run scoreboard players set - q-10 1
execute if score - q-10 matches 0 run function generated:quests/tick/q-10-0
scoreboard players set - q-10 0
execute if score q-10-0 q-10 = oq-10-0 q-10 run scoreboard players set - q-10 1
execute if score - q-10 matches 0 run function generated:quests/tick/q-10
scoreboard players operation campfire quest-status = q-10 q-10
execute if score campfire quest-status matches 100 run function generated:quests/campfire-end
