scoreboard players operation oq-13 q-13 = q-13 q-13
scoreboard players set q-13 q-13 0
scoreboard players operation q-13 q-13 += q-13-0 q-13
scoreboard players operation q-13 q-13 *= 100 const
scoreboard players operation q-13 q-13 /= 100 const
execute unless score q-13 q-13 matches ..100 run scoreboard players set q-13 q-13 100
execute unless score oq-13 q-13 = q-13 q-13 run scoreboard players set @a quest-book-upd 0
