scoreboard players operation oq-4 q-4 = q-4 q-4
scoreboard players set q-4 q-4 0
scoreboard players operation q-4 q-4 += q-4-0 q-4
scoreboard players operation q-4 q-4 /= 1 const
execute unless score q-4 q-4 matches ..100 run scoreboard players set q-4 q-4 100
execute unless score oq-4 q-4 = q-4 q-4 run scoreboard players set @a quest-book-upd 0