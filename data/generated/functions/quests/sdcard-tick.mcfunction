function generated:quests/tick/q-8-0-0
function generated:quests/tick/q-8-0-1
scoreboard players set - q-8 0
execute if score q-8-0-0 q-8 = oq-8-0-0 q-8 if score q-8-0-1 q-8 = oq-8-0-1 q-8 run scoreboard players set - q-8 1
execute if score - q-8 matches 0 run function generated:quests/tick/q-8-0
scoreboard players set - q-8 0
execute if score q-8-0 q-8 = oq-8-0 q-8 run scoreboard players set - q-8 1
execute if score - q-8 matches 0 run function generated:quests/tick/q-8
scoreboard players operation sdcard quest-status = q-8 q-8
execute if score sdcard quest-status matches 100 run function generated:quests/sdcard-end
