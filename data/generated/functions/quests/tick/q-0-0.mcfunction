scoreboard players operation oq-0-0 q-0 = q-0-0 q-0
scoreboard players set q-0-0 q-0 0
scoreboard players operation q-0-0 q-0 += q-0-0-0 q-0
scoreboard players operation q-0-0 q-0 /= 1 const
execute unless score q-0-0 q-0 matches ..100 run scoreboard players set q-0-0 q-0 100
