scoreboard players operation oq-1 q-1 = q-1 q-1
scoreboard players set q-1 q-1 0
scoreboard players operation q-1 q-1 += q-1-0 q-1
scoreboard players operation q-1 q-1 /= 2 const
#  execute unless score q-1 q-1 matches ..100 run scoreboard players set q-1 q-1 100
execute unless score oq-1 q-1 = q-1 q-1 run scoreboard players set @a quest-book-upd 0
