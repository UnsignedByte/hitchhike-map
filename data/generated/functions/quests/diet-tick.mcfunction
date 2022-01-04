function generated:quests/tick/q-3-0-0-0
function generated:quests/tick/q-3-0-0-1
function generated:quests/tick/q-3-0-0-2
function generated:quests/tick/q-3-0-0-3
function generated:quests/tick/q-3-0-0-4
function generated:quests/tick/q-3-0-0-5
scoreboard players set - q-3 0
execute if score q-3-0-0-0 q-3 = oq-3-0-0-0 q-3 if score q-3-0-0-1 q-3 = oq-3-0-0-1 q-3 if score q-3-0-0-2 q-3 = oq-3-0-0-2 q-3 if score q-3-0-0-3 q-3 = oq-3-0-0-3 q-3 if score q-3-0-0-4 q-3 = oq-3-0-0-4 q-3 if score q-3-0-0-5 q-3 = oq-3-0-0-5 q-3 run scoreboard players set - q-3 1
execute if score - q-3 matches 0 run function generated:quests/tick/q-3-0-0
function generated:quests/tick/q-3-0-1-0
function generated:quests/tick/q-3-0-1-1
function generated:quests/tick/q-3-0-1-2
function generated:quests/tick/q-3-0-1-3
function generated:quests/tick/q-3-0-1-4
function generated:quests/tick/q-3-0-1-5
function generated:quests/tick/q-3-0-1-6
function generated:quests/tick/q-3-0-1-7
function generated:quests/tick/q-3-0-1-8
function generated:quests/tick/q-3-0-1-9
scoreboard players set - q-3 0
execute if score q-3-0-1-0 q-3 = oq-3-0-1-0 q-3 if score q-3-0-1-1 q-3 = oq-3-0-1-1 q-3 if score q-3-0-1-2 q-3 = oq-3-0-1-2 q-3 if score q-3-0-1-3 q-3 = oq-3-0-1-3 q-3 if score q-3-0-1-4 q-3 = oq-3-0-1-4 q-3 if score q-3-0-1-5 q-3 = oq-3-0-1-5 q-3 if score q-3-0-1-6 q-3 = oq-3-0-1-6 q-3 if score q-3-0-1-7 q-3 = oq-3-0-1-7 q-3 if score q-3-0-1-8 q-3 = oq-3-0-1-8 q-3 if score q-3-0-1-9 q-3 = oq-3-0-1-9 q-3 run scoreboard players set - q-3 1
execute if score - q-3 matches 0 run function generated:quests/tick/q-3-0-1
function generated:quests/tick/q-3-0-2-0
function generated:quests/tick/q-3-0-2-1
function generated:quests/tick/q-3-0-2-2
function generated:quests/tick/q-3-0-2-3
scoreboard players set - q-3 0
execute if score q-3-0-2-0 q-3 = oq-3-0-2-0 q-3 if score q-3-0-2-1 q-3 = oq-3-0-2-1 q-3 if score q-3-0-2-2 q-3 = oq-3-0-2-2 q-3 if score q-3-0-2-3 q-3 = oq-3-0-2-3 q-3 run scoreboard players set - q-3 1
execute if score - q-3 matches 0 run function generated:quests/tick/q-3-0-2
scoreboard players set - q-3 0
execute if score q-3-0-0 q-3 = oq-3-0-0 q-3 if score q-3-0-1 q-3 = oq-3-0-1 q-3 if score q-3-0-2 q-3 = oq-3-0-2 q-3 run scoreboard players set - q-3 1
execute if score - q-3 matches 0 run function generated:quests/tick/q-3-0
scoreboard players set - q-3 0
execute if score q-3-0 q-3 = oq-3-0 q-3 run scoreboard players set - q-3 1
execute if score - q-3 matches 0 run function generated:quests/tick/q-3
scoreboard players operation diet quest-status = q-3 q-3
execute if score diet quest-status matches 100 run function generated:quests/diet-end
