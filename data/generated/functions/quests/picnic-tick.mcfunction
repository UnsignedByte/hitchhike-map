function generated:quests/tick/q-7-0-0
scoreboard players set - q-7 0
execute if score q-7-0-0 q-7 = oq-7-0-0 q-7 run scoreboard players set - q-7 1
execute if score - q-7 matches 0 run function generated:quests/tick/q-7-0
scoreboard players set - q-7 0
execute if score q-7-0 q-7 = oq-7-0 q-7 run scoreboard players set - q-7 1
execute if score - q-7 matches 0 run function generated:quests/tick/q-7
scoreboard players operation picnic quest-status = q-7 q-7
execute if score picnic quest-status matches 100 run function generated:quests/picnic-end
