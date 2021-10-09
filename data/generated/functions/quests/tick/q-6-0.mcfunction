scoreboard players operation oq-6-0 q-6 = q-6-0 q-6
scoreboard players set q-6-0 q-6 0
scoreboard players operation q-6-0 q-6 += q-6-0-0 q-6
scoreboard players operation q-6-0 q-6 += q-6-0-1 q-6
scoreboard players operation q-6-0 q-6 *= 100 const
scoreboard players operation q-6-0 q-6 /= 102 const
execute unless score q-6-0 q-6 matches ..100 run scoreboard players set q-6-0 q-6 100
