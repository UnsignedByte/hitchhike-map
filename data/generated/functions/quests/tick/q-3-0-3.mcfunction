scoreboard players operation oq-3-0-3 q-3 = q-3-0-3 q-3
scoreboard players set q-3-0-3 q-3 0
scoreboard players set @a q-3-0-3 0
execute as @a at @s if entity @s[x=906,y=64,z=186,dx=13,dz=4,dy=1] run scoreboard players add @s q-3-0-3 1
scoreboard players operation q-3-0-3 q-3 += @a q-3-0-3
scoreboard players operation q-3-0-3 q-3 *= 100 const
scoreboard players operation q-3-0-3 q-3 /= playercount vars
scoreboard players operation q-3-0-3 q-3 *= 1 const
scoreboard players operation q-3-0-3 q-3 /= 100 const
scoreboard players operation q-3-0-3 q-3 /= 1 const
execute unless score q-3-0-3 q-3 matches ..100 run scoreboard players set q-3-0-3 q-3 100
