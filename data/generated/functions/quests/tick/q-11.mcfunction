scoreboard players operation oq-11 q-11 = q-11 q-11
scoreboard players set q-11 q-11 0
scoreboard players operation q-11 q-11 += q-11-0 q-11
scoreboard players operation q-11 q-11 *= 100 const
scoreboard players operation q-11 q-11 /= 100 const
execute unless score q-11 q-11 matches ..100 run scoreboard players set q-11 q-11 100
execute unless score oq-11 q-11 = q-11 q-11 run scoreboard players set @a quest-book-upd 0
