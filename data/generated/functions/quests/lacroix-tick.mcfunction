function generated:quests/tick/q-6-0-0
function generated:quests/tick/q-6-0-1
scoreboard players set - q-6 0
execute if score q-6-0-0 q-6 = oq-6-0-0 q-6 if score q-6-0-1 q-6 = oq-6-0-1 q-6 run scoreboard players set - q-6 1
execute if score - q-6 matches 0 run function generated:quests/tick/q-6-0
scoreboard players set - q-6 0
execute if score q-6-0 q-6 = oq-6-0 q-6 run scoreboard players set - q-6 1
execute if score - q-6 matches 0 run function generated:quests/tick/q-6
scoreboard players operation lacroix quest-status = q-6 q-6
execute if score lacroix quest-status matches 100 run function generated:quests/lacroix-end
