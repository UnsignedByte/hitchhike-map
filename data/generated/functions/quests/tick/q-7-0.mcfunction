scoreboard players operation oq-7-0 q-7 = q-7-0 q-7
scoreboard players set q-7-0 q-7 0
scoreboard players operation q-7-0 q-7 += q-7-0-0 q-7
scoreboard players operation q-7-0 q-7 *= 100 const
scoreboard players operation q-7-0 q-7 /= 100 const
execute unless score q-7-0 q-7 matches ..100 run scoreboard players set q-7-0 q-7 100
