scoreboard players operation oq-1 q-1 = q-1 q-1
scoreboard players set q-1 q-1 0
execute if score q-1 q-1 > q-1-0 q-1 run scoreboard players operation q-1 q-1 = q-1-0 q-1
execute if score q-1 q-1 > q-1-1 q-1 run scoreboard players operation q-1 q-1 = q-1-1 q-1
execute unless score oq-1 q-1 = q-1 q-1 run scoreboard players set @a quest-book-upd 0
