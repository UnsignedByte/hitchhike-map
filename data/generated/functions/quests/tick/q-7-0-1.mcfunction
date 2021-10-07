scoreboard players operation oq-7-0-1 q-7 = q-7-0-1 q-7
scoreboard players set q-7-0-1 q-7 0
scoreboard players set @a q-7-0-1 0
execute as @a at @s x run scoreboard players add @s q-7-0-1 1
scoreboard players operation q-7-0-1 q-7 += @a q-7-0-1
scoreboard players operation q-7-0-1 q-7 *= 100 const
scoreboard players operation q-7-0-1 q-7 /= playercount vars
scoreboard players operation q-7-0-1 q-7 *= 1 const
scoreboard players operation q-7-0-1 q-7 /= 100 const
execute unless score q-7-0-1 q-7 matches ..1 run scoreboard players set q-7-0-1 q-7 1
