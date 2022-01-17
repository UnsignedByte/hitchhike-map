scoreboard players operation oq-9-0-1 q-9 = q-9-0-1 q-9
scoreboard players set q-9-0-1 q-9 0
execute if entity @a[x=939,y=69,z=181,dx=6,dy=2,dz=5] run scoreboard players add q-9-0-1 q-9 1
scoreboard players operation q-9-0-1 q-9 *= 100 const
scoreboard players operation q-9-0-1 q-9 *= 1 const
scoreboard players operation q-9-0-1 q-9 /= 100 const
execute unless score q-9-0-1 q-9 matches ..1 run scoreboard players set q-9-0-1 q-9 1
