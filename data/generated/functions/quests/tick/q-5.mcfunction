scoreboard players operation oq-5 q-5 = q-5 q-5
scoreboard players set q-5 q-5 0
scoreboard players operation q-5 q-5 += q-5-0 q-5
scoreboard players operation q-5 q-5 *= 100 const
scoreboard players operation q-5 q-5 *= undefined const
scoreboard players operation q-5 q-5 /= 1 const
execute unless score q-5 q-5 matches ..undefined run scoreboard players set q-5 q-5 undefined
execute unless score oq-5 q-5 = q-5 q-5 run scoreboard players set @a quest-book-upd 0
