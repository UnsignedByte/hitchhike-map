function generated:quests/tick/q-5-0-0
scoreboard players set - q-5 0
execute if score q-5-0-0 q-5 = oq-5-0-0 q-5 run scoreboard players set - q-5 1
execute if score - q-5 matches 0 run function generated:quests/tick/q-5-0
scoreboard players set - q-5 0
execute if score q-5-0 q-5 = oq-5-0 q-5 run scoreboard players set - q-5 1
execute if score - q-5 matches 0 run function generated:quests/tick/q-5
scoreboard players operation leather quest-status = q-5 q-5
execute if score leather quest-status matches 100 run function generated:quests/leather-end
