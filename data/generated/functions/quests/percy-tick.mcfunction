function generated:quests/tick/q-2-0
scoreboard players set - q-2 0
execute if score q-2-0 q-2 = oq-2-0 q-2 run scoreboard players set - q-2 1
execute if score - q-2 matches 0 run function generated:quests/tick/q-2
scoreboard players operation percy quest-status = q-2 q-2
execute if score percy quest-status matches 100 run function generated:quests/percy-end
