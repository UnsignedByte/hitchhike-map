scoreboard players operation oq-12 q-12 = q-12 q-12
scoreboard players set q-12 q-12 0
scoreboard players operation q-12 q-12 += q-12-0 q-12
scoreboard players operation q-12 q-12 *= 100 const
scoreboard players operation q-12 q-12 /= 100 const
execute unless score q-12 q-12 matches ..100 run scoreboard players set q-12 q-12 100
execute unless score oq-12 q-12 = q-12 q-12 run scoreboard players set @a quest-book-upd 0
