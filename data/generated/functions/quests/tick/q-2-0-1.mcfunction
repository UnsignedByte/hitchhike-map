scoreboard players operation oq-2-0-1 q-2 = q-2-0-1 q-2
scoreboard players set q-2-0-1 q-2 0
scoreboard players set @a q-2-0-1 0
execute as @a at @s if entity @s[x=906,y=64,z=186,dx=13,dz=5,dy=1] run scoreboard players add @s q-2-0-1 1
scoreboard players operation q-2-0-1 q-2 += @a q-2-0-1
scoreboard players operation q-2-0-1 q-2 *= 100 const
scoreboard players operation q-2-0-1 q-2 /= playercount vars
scoreboard players operation q-2-0-1 q-2 *= 1 const
scoreboard players operation q-2-0-1 q-2 /= 100 const
execute unless score q-2-0-1 q-2 matches ..1 run scoreboard players set q-2-0-1 q-2 1
