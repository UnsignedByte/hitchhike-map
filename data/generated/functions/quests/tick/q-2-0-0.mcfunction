scoreboard players operation oq-2-0-0 q-2 = q-2-0-0 q-2
scoreboard players set q-2-0-0 q-2 0
scoreboard players operation q-2-0-0 q-2 += q-2-0-0-0 q-2
scoreboard players operation q-2-0-0 q-2 += q-2-0-0-1 q-2
scoreboard players operation q-2-0-0 q-2 += q-2-0-0-2 q-2
scoreboard players operation q-2-0-0 q-2 /= 5 const
 execute unless score q-2-0-0 q-2 matches ..100 run scoreboard players set q-2-0-0 q-2 100
