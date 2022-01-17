function generated:quests/tick/q-3-0
scoreboard players set - q-3 0
execute if score q-3-0 q-3 = oq-3-0 q-3 run scoreboard players set - q-3 1
execute if score - q-3 matches 0 run function generated:quests/tick/q-3
scoreboard players operation mountain quest-status = q-3 q-3
execute if score mountain quest-status matches 100 run function generated:quests/mountain-end
