scoreboard players operation oq-4-0 q-4 = q-4-0 q-4
scoreboard players set q-4-0 q-4 0
scoreboard players operation q-4-0 q-4 += q-4-0-0 q-4
scoreboard players operation q-4-0 q-4 += q-4-0-1 q-4
scoreboard players operation q-4-0 q-4 *= 100 const
scoreboard players operation q-4-0 q-4 /= 100 const
scoreboard players operation q-4-0 q-4 /= 101 const
execute unless score q-4-0 q-4 matches ..100 run scoreboard players set q-4-0 q-4 100
