scoreboard players operation oq-2-0-0 q-2 = q-2-0-0 q-2
scoreboard players set q-2-0-0 q-2 0
scoreboard players set @a q-2-0-0 0
execute as @a at @s if entity @s[x=947,y=70,z=-3,dz=4,dx=6,dy=3] run scoreboard players add @s q-2-0-0 1
execute as @a at @s if score visitfriend-start story-sawyer matches 1 run scoreboard players add @s q-2-0-0 1
scoreboard players operation q-2-0-0 q-2 += @a q-2-0-0
scoreboard players operation q-2-0-0 q-2 *= 100 const
scoreboard players operation q-2-0-0 q-2 *= 100 const
scoreboard players operation q-2-0-0 q-2 /= 100 const
execute unless score q-2-0-0 q-2 matches ..100 run scoreboard players set q-2-0-0 q-2 100
