scoreboard players operation oq-3 q-3 = q-3 q-3
scoreboard players set q-3 q-3 0
scoreboard players operation q-3 q-3 += q-3-0 q-3
scoreboard players operation q-3 q-3 *= 100 const
scoreboard players operation q-3 q-3 *= undefined const
scoreboard players operation q-3 q-3 /= 1 const
execute unless score q-3 q-3 matches ..100 run scoreboard players set q-3 q-3 100
execute unless score oq-3 q-3 = q-3 q-3 run scoreboard players set @a quest-book-upd 0
