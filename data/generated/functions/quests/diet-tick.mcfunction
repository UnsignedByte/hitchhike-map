function generated:quests/tick/q-2-0-0-0
function generated:quests/tick/q-2-0-0-1
function generated:quests/tick/q-2-0-0-2
scoreboard players set - q-2 0
execute if score q-2-0-0-0 q-2 = oq-2-0-0-0 q-2 if score q-2-0-0-1 q-2 = oq-2-0-0-1 q-2 if score q-2-0-0-2 q-2 = oq-2-0-0-2 q-2 run scoreboard players set - q-2 1
execute if score - q-2 matches 0 run function generated:quests/tick/q-2-0-0
function generated:quests/tick/q-2-0-1-0
function generated:quests/tick/q-2-0-1-1
function generated:quests/tick/q-2-0-1-2
scoreboard players set - q-2 0
execute if score q-2-0-1-0 q-2 = oq-2-0-1-0 q-2 if score q-2-0-1-1 q-2 = oq-2-0-1-1 q-2 if score q-2-0-1-2 q-2 = oq-2-0-1-2 q-2 run scoreboard players set - q-2 1
execute if score - q-2 matches 0 run function generated:quests/tick/q-2-0-1
scoreboard players set - q-2 0
execute if score q-2-0-0 q-2 = oq-2-0-0 q-2 if score q-2-0-1 q-2 = oq-2-0-1 q-2 run scoreboard players set - q-2 1
execute if score - q-2 matches 0 run function generated:quests/tick/q-2-0
scoreboard players set - q-2 0
execute if score q-2-0 q-2 = oq-2-0 q-2 run scoreboard players set - q-2 1
execute if score - q-2 matches 0 run function generated:quests/tick/q-2
scoreboard players operation diet quest-status = q-2 q-2
execute if score diet quest-status matches 100 run function generated:quests/diet-end
