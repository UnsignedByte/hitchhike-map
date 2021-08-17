function generated:quests/tick/q-1-0-0-0
function generated:quests/tick/q-1-0-0-1
function generated:quests/tick/q-1-0-0-2
execute if score q-1-0-0-0 q-1 != oq-1-0-0-0 q-1 if score q-1-0-0-1 q-1 != oq-1-0-0-1 q-1 if score q-1-0-0-2 q-1 != oq-1-0-0-2 q-1 run function generated:quests/tick/q-1-0-0
function generated:quests/tick/q-1-0-1-0
function generated:quests/tick/q-1-0-1-1
function generated:quests/tick/q-1-0-1-2
execute if score q-1-0-1-0 q-1 != oq-1-0-1-0 q-1 if score q-1-0-1-1 q-1 != oq-1-0-1-1 q-1 if score q-1-0-1-2 q-1 != oq-1-0-1-2 q-1 run function generated:quests/tick/q-1-0-1
execute if score q-1-0-0 q-1 != oq-1-0-0 q-1 if score q-1-0-1 q-1 != oq-1-0-1 q-1 run function generated:quests/tick/q-1-0
execute if score q-1-0 q-1 != oq-1-0 q-1 run function generated:quests/tick/q-1
function generated:quests/tick/q-1
scoreboard players operation diet quest-status = q-1 q-1
