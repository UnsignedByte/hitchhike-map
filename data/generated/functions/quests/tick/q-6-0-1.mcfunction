scoreboard players operation oq-6-0-1 q-6 = q-6-0-1 q-6
scoreboard players set q-6-0-1 q-6 0
scoreboard players set @a q-6-0-1 0
execute as @a at @s x run scoreboard players add @s q-6-0-1 1
scoreboard players operation q-6-0-1 q-6 += @a q-6-0-1
scoreboard players operation q-6-0-1 q-6 *= 100 const
scoreboard players operation q-6-0-1 q-6 /= playercount vars
scoreboard players operation q-6-0-1 q-6 *= 1 const
scoreboard players operation q-6-0-1 q-6 /= 100 const
execute unless score q-6-0-1 q-6 matches ..1 run scoreboard players set q-6-0-1 q-6 1
