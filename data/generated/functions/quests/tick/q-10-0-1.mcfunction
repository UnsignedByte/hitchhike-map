scoreboard players operation oq-10-0-1 q-10 = q-10-0-1 q-10
scoreboard players set q-10-0-1 q-10 0
execute if entity @a[x=939,y=69,z=181,dx=6,dy=2,dz=5] run scoreboard players add q-10-0-1 q-10 1
scoreboard players operation q-10-0-1 q-10 *= 100 const
scoreboard players operation q-10-0-1 q-10 *= 1 const
scoreboard players operation q-10-0-1 q-10 /= 100 const
execute unless score q-10-0-1 q-10 matches ..1 run scoreboard players set q-10-0-1 q-10 1
