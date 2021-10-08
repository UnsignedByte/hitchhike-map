scoreboard players operation oq-7-0-1 q-7 = q-7-0-1 q-7
scoreboard players set q-7-0-1 q-7 0
execute if entity @a[x=939,y=69,z=181,dx=6,dy=2,dz=5] run scoreboard players add q-7-0-1 q-7 1
scoreboard players operation q-7-0-1 q-7 *= 100 const
scoreboard players operation q-7-0-1 q-7 *= 1 const
scoreboard players operation q-7-0-1 q-7 /= 100 const
execute unless score q-7-0-1 q-7 matches ..1 run scoreboard players set q-7-0-1 q-7 1
