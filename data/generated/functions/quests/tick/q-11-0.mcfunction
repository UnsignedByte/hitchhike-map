scoreboard players operation oq-11-0 q-11 = q-11-0 q-11
scoreboard players set q-11-0 q-11 0
scoreboard players operation q-11-0 q-11 += q-11-0-0 q-11
scoreboard players operation q-11-0 q-11 += q-11-0-1 q-11
scoreboard players operation q-11-0 q-11 += q-11-0-2 q-11
scoreboard players operation q-11-0 q-11 += q-11-0-3 q-11
scoreboard players operation q-11-0 q-11 *= 100 const
scoreboard players operation q-11-0 q-11 /= 400 const
execute unless score q-11-0 q-11 matches ..100 run scoreboard players set q-11-0 q-11 100
