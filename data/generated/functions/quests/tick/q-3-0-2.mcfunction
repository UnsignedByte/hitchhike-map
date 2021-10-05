scoreboard players operation oq-3-0-2 q-3 = q-3-0-2 q-3
scoreboard players set q-3-0-2 q-3 0
scoreboard players operation q-3-0-2-0 q-3 *= 100 const
scoreboard players operation q-3-0-2-0 q-3 /= 100 const
scoreboard players operation q-3-0-2 q-3 += q-3-0-2-0 q-3
scoreboard players operation q-3-0-2-1 q-3 *= 100 const
scoreboard players operation q-3-0-2-1 q-3 /= 100 const
scoreboard players operation q-3-0-2 q-3 += q-3-0-2-1 q-3
scoreboard players operation q-3-0-2-2 q-3 *= 100 const
scoreboard players operation q-3-0-2-2 q-3 /= 100 const
scoreboard players operation q-3-0-2 q-3 += q-3-0-2-2 q-3
scoreboard players operation q-3-0-2-3 q-3 *= 100 const
scoreboard players operation q-3-0-2-3 q-3 /= 100 const
scoreboard players operation q-3-0-2 q-3 += q-3-0-2-3 q-3
scoreboard players operation q-3-0-2 q-3 /= 3 const
execute unless score q-3-0-2 q-3 matches ..100 run scoreboard players set q-3-0-2 q-3 100
