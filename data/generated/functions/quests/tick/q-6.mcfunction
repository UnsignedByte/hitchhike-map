scoreboard players operation oq-6 q-6 = q-6 q-6
scoreboard players set q-6 q-6 0
scoreboard players operation q-6 q-6 += q-6-0 q-6
scoreboard players operation q-6 q-6 *= 100 const
scoreboard players operation q-6 q-6 /= 100 const
execute unless score q-6 q-6 matches ..100 run scoreboard players set q-6 q-6 100
execute unless score oq-6 q-6 = q-6 q-6 run scoreboard players set @a quest-book-upd 0
