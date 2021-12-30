scoreboard players operation oq-10 q-10 = q-10 q-10
scoreboard players set q-10 q-10 0
scoreboard players operation q-10 q-10 += q-10-0 q-10
scoreboard players operation q-10 q-10 *= 100 const
scoreboard players operation q-10 q-10 /= 100 const
execute unless score q-10 q-10 matches ..100 run scoreboard players set q-10 q-10 100
execute unless score oq-10 q-10 = q-10 q-10 run scoreboard players set @a quest-book-upd 0
