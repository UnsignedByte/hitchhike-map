function generated:quests/tick/q-9-0-0
function generated:quests/tick/q-9-0-1
function generated:quests/tick/q-9-0-2
function generated:quests/tick/q-9-0-3
scoreboard players set - q-9 0
execute if score q-9-0-0 q-9 = oq-9-0-0 q-9 if score q-9-0-1 q-9 = oq-9-0-1 q-9 if score q-9-0-2 q-9 = oq-9-0-2 q-9 if score q-9-0-3 q-9 = oq-9-0-3 q-9 run scoreboard players set - q-9 1
execute if score - q-9 matches 0 run function generated:quests/tick/q-9-0
scoreboard players set - q-9 0
execute if score q-9-0 q-9 = oq-9-0 q-9 run scoreboard players set - q-9 1
execute if score - q-9 matches 0 run function generated:quests/tick/q-9
scoreboard players operation campfire quest-status = q-9 q-9
execute if score campfire quest-status matches 100 run function generated:quests/campfire-end
