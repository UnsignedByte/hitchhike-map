scoreboard players operation oq-5-0 q-5 = q-5-0 q-5
scoreboard players set q-5-0 q-5 0
scoreboard players operation q-5-0 q-5 += q-5-0-0 q-5
scoreboard players operation q-5-0 q-5 += q-5-0-1 q-5
scoreboard players operation q-5-0 q-5 *= 100 const
scoreboard players operation q-5-0 q-5 /= 101 const
execute unless score q-5-0 q-5 matches ..100 run scoreboard players set q-5-0 q-5 100
