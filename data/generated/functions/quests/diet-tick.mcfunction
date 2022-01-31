function generated:quests/tick/q-4-0-0-0
function generated:quests/tick/q-4-0-0-1
function generated:quests/tick/q-4-0-0-2
function generated:quests/tick/q-4-0-0-3
function generated:quests/tick/q-4-0-0-4
function generated:quests/tick/q-4-0-0-5
function generated:quests/tick/q-4-0-0-6
function generated:quests/tick/q-4-0-0-7
function generated:quests/tick/q-4-0-0-8
function generated:quests/tick/q-4-0-0-9
function generated:quests/tick/q-4-0-0-10
function generated:quests/tick/q-4-0-0-11
function generated:quests/tick/q-4-0-0-12
function generated:quests/tick/q-4-0-0-13
function generated:quests/tick/q-4-0-0-14
function generated:quests/tick/q-4-0-0-15
function generated:quests/tick/q-4-0-0-16
scoreboard players set - q-4 0
execute if score q-4-0-0-0 q-4 = oq-4-0-0-0 q-4 if score q-4-0-0-1 q-4 = oq-4-0-0-1 q-4 if score q-4-0-0-2 q-4 = oq-4-0-0-2 q-4 if score q-4-0-0-3 q-4 = oq-4-0-0-3 q-4 if score q-4-0-0-4 q-4 = oq-4-0-0-4 q-4 if score q-4-0-0-5 q-4 = oq-4-0-0-5 q-4 if score q-4-0-0-6 q-4 = oq-4-0-0-6 q-4 if score q-4-0-0-7 q-4 = oq-4-0-0-7 q-4 if score q-4-0-0-8 q-4 = oq-4-0-0-8 q-4 if score q-4-0-0-9 q-4 = oq-4-0-0-9 q-4 if score q-4-0-0-10 q-4 = oq-4-0-0-10 q-4 if score q-4-0-0-11 q-4 = oq-4-0-0-11 q-4 if score q-4-0-0-12 q-4 = oq-4-0-0-12 q-4 if score q-4-0-0-13 q-4 = oq-4-0-0-13 q-4 if score q-4-0-0-14 q-4 = oq-4-0-0-14 q-4 if score q-4-0-0-15 q-4 = oq-4-0-0-15 q-4 if score q-4-0-0-16 q-4 = oq-4-0-0-16 q-4 run scoreboard players set - q-4 1
execute if score - q-4 matches 0 run function generated:quests/tick/q-4-0-0
scoreboard players set - q-4 0
execute if score q-4-0-0 q-4 = oq-4-0-0 q-4 run scoreboard players set - q-4 1
execute if score - q-4 matches 0 run function generated:quests/tick/q-4-0
scoreboard players set - q-4 0
execute if score q-4-0 q-4 = oq-4-0 q-4 run scoreboard players set - q-4 1
execute if score - q-4 matches 0 run function generated:quests/tick/q-4
scoreboard players operation diet quest-status = q-4 q-4
execute if score diet quest-status matches 100 run function generated:quests/diet-end
