scoreboard players operation oq-4-0-1 q-4 = q-4-0-1 q-4
scoreboard players set q-4-0-1 q-4 0
scoreboard players set @a q-4-0-1 0
execute as @a at @s if entity @s[x=906,y=64,z=186,dx=13,dz=4,dy=1] run scoreboard players add @s q-4-0-1 1
scoreboard players operation q-4-0-1 q-4 += @a q-4-0-1
scoreboard players operation q-4-0-1 q-4 *= 100 const
scoreboard players operation q-4-0-1 q-4 /= playercount vars
scoreboard players operation q-4-0-1 q-4 *= 1 const
scoreboard players operation q-4-0-1 q-4 /= 100 const
execute unless score q-4-0-1 q-4 matches ..100 run scoreboard players set q-4-0-1 q-4 100
