scoreboard players operation oq-1 q-1 = q-1 q-1
scoreboard players set q-1 q-1 0
scoreboard players operation q-1 q-1 += q-1-0 q-1
scoreboard players operation q-1 q-1 *= 100 const
scoreboard players operation q-1 q-1 *= undefined const
scoreboard players operation q-1 q-1 /= 1 const
execute unless score q-1 q-1 matches ..undefined run scoreboard players set q-1 q-1 undefined
execute unless score oq-1 q-1 = q-1 q-1 run scoreboard players set @a quest-book-upd 0
