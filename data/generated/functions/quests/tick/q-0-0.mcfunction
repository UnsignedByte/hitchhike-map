scoreboard players operation oq-0-0 q-0 = q-0-0 q-0
scoreboard players set q-0-0 q-0 0
scoreboard players set @a q-0-0 0
execute as @a at @s x run scoreboard players add @s q-0-0 1
scoreboard players operation q-0-0 q-0 += @a q-0-0
scoreboard players operation q-0-0 q-0 *= 100 const
scoreboard players operation q-0-0 q-0 /= playercount vars
scoreboard players operation q-0-0 q-0 *= 100 const
scoreboard players operation q-0-0 q-0 /= 100 const
execute unless score q-0-0 q-0 matches ..100 run scoreboard players set q-0-0 q-0 100
