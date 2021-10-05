scoreboard players operation oq-2 q-2 = q-2 q-2
scoreboard players set q-2 q-2 0
scoreboard players operation q-2 q-2 += q-2-0 q-2
scoreboard players operation q-2 q-2 *= 100 const
scoreboard players operation q-2 q-2 /= 100 const
execute unless score q-2 q-2 matches ..100 run scoreboard players set q-2 q-2 100
execute unless score oq-2 q-2 = q-2 q-2 run scoreboard players set @a quest-book-upd 0
