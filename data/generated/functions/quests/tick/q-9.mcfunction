scoreboard players operation oq-9 q-9 = q-9 q-9
scoreboard players set q-9 q-9 0
scoreboard players operation q-9 q-9 += q-9-0 q-9
scoreboard players operation q-9 q-9 *= 100 const
scoreboard players operation q-9 q-9 /= 100 const
execute unless score q-9 q-9 matches ..100 run scoreboard players set q-9 q-9 100
execute unless score oq-9 q-9 = q-9 q-9 run scoreboard players set @a quest-book-upd 0
