scoreboard players operation oq-5-0-1 q-5 = q-5-0-1 q-5
scoreboard players set q-5-0-1 q-5 0
scoreboard players set @a q-5-0-1 0
execute as @a at @s if entity @s[x=905,y=64,z=189,dx=13,dz=15,dy=1] run scoreboard players add @s q-5-0-1 1
scoreboard players operation q-5-0-1 q-5 += @a q-5-0-1
scoreboard players operation q-5-0-1 q-5 *= 100 const
scoreboard players operation q-5-0-1 q-5 /= playercount vars
scoreboard players operation q-5-0-1 q-5 /= 1 const
execute unless score q-5-0-1 q-5 matches ..100 run scoreboard players set q-5-0-1 q-5 100
