function generated:quests/tick/q-4-0-0-0
function generated:quests/tick/q-4-0-0-1
function generated:quests/tick/q-4-0-0-2
function generated:quests/tick/q-4-0-0-3
function generated:quests/tick/q-4-0-0-4
function generated:quests/tick/q-4-0-0-5
scoreboard players set - q-4 0
execute if score q-4-0-0-0 q-4 = oq-4-0-0-0 q-4 if score q-4-0-0-1 q-4 = oq-4-0-0-1 q-4 if score q-4-0-0-2 q-4 = oq-4-0-0-2 q-4 if score q-4-0-0-3 q-4 = oq-4-0-0-3 q-4 if score q-4-0-0-4 q-4 = oq-4-0-0-4 q-4 if score q-4-0-0-5 q-4 = oq-4-0-0-5 q-4 run scoreboard players set - q-4 1
execute if score - q-4 matches 0 run function generated:quests/tick/q-4-0-0
function generated:quests/tick/q-4-0-1-0
function generated:quests/tick/q-4-0-1-1
function generated:quests/tick/q-4-0-1-2
function generated:quests/tick/q-4-0-1-3
function generated:quests/tick/q-4-0-1-4
function generated:quests/tick/q-4-0-1-5
function generated:quests/tick/q-4-0-1-6
function generated:quests/tick/q-4-0-1-7
function generated:quests/tick/q-4-0-1-8
function generated:quests/tick/q-4-0-1-9
scoreboard players set - q-4 0
execute if score q-4-0-1-0 q-4 = oq-4-0-1-0 q-4 if score q-4-0-1-1 q-4 = oq-4-0-1-1 q-4 if score q-4-0-1-2 q-4 = oq-4-0-1-2 q-4 if score q-4-0-1-3 q-4 = oq-4-0-1-3 q-4 if score q-4-0-1-4 q-4 = oq-4-0-1-4 q-4 if score q-4-0-1-5 q-4 = oq-4-0-1-5 q-4 if score q-4-0-1-6 q-4 = oq-4-0-1-6 q-4 if score q-4-0-1-7 q-4 = oq-4-0-1-7 q-4 if score q-4-0-1-8 q-4 = oq-4-0-1-8 q-4 if score q-4-0-1-9 q-4 = oq-4-0-1-9 q-4 run scoreboard players set - q-4 1
execute if score - q-4 matches 0 run function generated:quests/tick/q-4-0-1
function generated:quests/tick/q-4-0-2-0
function generated:quests/tick/q-4-0-2-1
function generated:quests/tick/q-4-0-2-2
function generated:quests/tick/q-4-0-2-3
scoreboard players set - q-4 0
execute if score q-4-0-2-0 q-4 = oq-4-0-2-0 q-4 if score q-4-0-2-1 q-4 = oq-4-0-2-1 q-4 if score q-4-0-2-2 q-4 = oq-4-0-2-2 q-4 if score q-4-0-2-3 q-4 = oq-4-0-2-3 q-4 run scoreboard players set - q-4 1
execute if score - q-4 matches 0 run function generated:quests/tick/q-4-0-2
scoreboard players set - q-4 0
execute if score q-4-0-0 q-4 = oq-4-0-0 q-4 if score q-4-0-1 q-4 = oq-4-0-1 q-4 if score q-4-0-2 q-4 = oq-4-0-2 q-4 run scoreboard players set - q-4 1
execute if score - q-4 matches 0 run function generated:quests/tick/q-4-0
scoreboard players set - q-4 0
execute if score q-4-0 q-4 = oq-4-0 q-4 run scoreboard players set - q-4 1
execute if score - q-4 matches 0 run function generated:quests/tick/q-4
scoreboard players operation diet quest-status = q-4 q-4
execute if score diet quest-status matches 100 run function generated:quests/diet-end
