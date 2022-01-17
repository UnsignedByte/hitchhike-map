function generated:quests/tick/q-0-0
scoreboard players set - q-0 0
execute if score q-0-0 q-0 = oq-0-0 q-0 run scoreboard players set - q-0 1
execute if score - q-0 matches 0 run function generated:quests/tick/q-0
scoreboard players operation birthday quest-status = q-0 q-0
execute if score birthday quest-status matches 100 run function generated:quests/birthday-end
