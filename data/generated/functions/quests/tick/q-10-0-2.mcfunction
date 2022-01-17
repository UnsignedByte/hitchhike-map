scoreboard players operation oq-10-0-2 q-10 = q-10-0-2 q-10
scoreboard players set q-10-0-2 q-10 0
scoreboard players operation q-10-0-2 q-10 += @a s-10-0-2
scoreboard players operation q-10-0-2 q-10 *= 100 const
scoreboard players operation q-10-0-2 q-10 *= 100 const
scoreboard players operation q-10-0-2 q-10 /= 100 const
execute unless score q-10-0-2 q-10 matches ..100 run scoreboard players set q-10-0-2 q-10 100
