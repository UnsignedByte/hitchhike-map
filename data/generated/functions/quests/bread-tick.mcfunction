function generated:quests/tick/q-1-0
scoreboard players set - q-1 0
execute if score q-1-0 q-1 = oq-1-0 q-1 run scoreboard players set - q-1 1
execute if score - q-1 matches 0 run function generated:quests/tick/q-1
scoreboard players operation bread quest-status = q-1 q-1
execute if score bread quest-status matches 100 run function generated:quests/bread-end
