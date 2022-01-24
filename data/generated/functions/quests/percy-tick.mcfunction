function generated:quests/tick/q-13-0
scoreboard players set - q-13 0
execute if score q-13-0 q-13 = oq-13-0 q-13 run scoreboard players set - q-13 1
execute if score - q-13 matches 0 run function generated:quests/tick/q-13
scoreboard players operation percy quest-status = q-13 q-13
execute if score percy quest-status matches 100 run function generated:quests/percy-end
