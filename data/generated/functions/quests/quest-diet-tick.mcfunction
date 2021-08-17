function generated:quests/tick/q-1-0-0
function generated:quests/tick/q-1-0-1
function generated:quests/tick/q-1-0-2
execute unless score q-1-0-0 q-1 = oq-1-0-0 q-1 unless score q-1-0-1 q-1 = oq-1-0-1 q-1 unless score q-1-0-2 q-1 = oq-1-0-2 q-1 run function generated:quests/tick/q-1-0
function generated:quests/tick/q-1-1-0
function generated:quests/tick/q-1-1-1
function generated:quests/tick/q-1-1-2
execute unless score q-1-1-0 q-1 = oq-1-1-0 q-1 unless score q-1-1-1 q-1 = oq-1-1-1 q-1 unless score q-1-1-2 q-1 = oq-1-1-2 q-1 run function generated:quests/tick/q-1-1
execute unless score q-1-0 q-1 = oq-1-0 q-1 unless score q-1-1 q-1 = oq-1-1 q-1 run function generated:quests/tick/q-1
function generated:quests/tick/q-1
scoreboard players operation diet quest-status = q-1 q-1
