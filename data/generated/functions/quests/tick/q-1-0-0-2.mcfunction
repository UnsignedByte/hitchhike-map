scoreboard players operation oq-1-0-0-2 q-1 = q-1-0-0-2 q-1
scoreboard players set q-1-0-0-2 q-1 0
scoreboard players operation q-1-0-0-2 q-1 += @a s-1-0-0-2
scoreboard players operation q-1-0-0-2 q-1 *= 100 const
scoreboard players operation q-1-0-0-2 q-1 /= 1 const
#  execute unless score q-1-0-0-2 q-1 matches ..100 run scoreboard players set q-1-0-0-2 q-1 100
