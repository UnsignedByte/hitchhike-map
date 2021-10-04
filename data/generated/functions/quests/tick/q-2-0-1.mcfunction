scoreboard players operation oq-2-0-1 q-2 = q-2-0-1 q-2
scoreboard players set q-2-0-1 q-2 0
scoreboard players operation q-2-0-1 q-2 += q-2-0-1-0 q-2
scoreboard players operation q-2-0-1 q-2 += q-2-0-1-1 q-2
scoreboard players operation q-2-0-1 q-2 += q-2-0-1-2 q-2
scoreboard players operation q-2-0-1 q-2 += q-2-0-1-3 q-2
scoreboard players operation q-2-0-1 q-2 /= 3 const
execute unless score q-2-0-1 q-2 matches ..100 run scoreboard players set q-2-0-1 q-2 100
