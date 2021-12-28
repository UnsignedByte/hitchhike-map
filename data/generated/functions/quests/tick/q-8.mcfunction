scoreboard players operation oq-8 q-8 = q-8 q-8
scoreboard players set q-8 q-8 0
scoreboard players operation q-8 q-8 += q-8-0 q-8
scoreboard players operation q-8 q-8 *= 100 const
scoreboard players operation q-8 q-8 /= 100 const
execute unless score q-8 q-8 matches ..100 run scoreboard players set q-8 q-8 100
execute unless score oq-8 q-8 = q-8 q-8 run scoreboard players set @a quest-book-upd 0
