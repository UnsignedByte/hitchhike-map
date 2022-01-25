scoreboard players operation oq-8-0-1 q-8 = q-8-0-1 q-8
scoreboard players set q-8-0-1 q-8 0
execute if entity @a[x=939,y=69,z=181,dx=6,dy=2,dz=5] run scoreboard players add q-8-0-1 q-8 1
scoreboard players operation q-8-0-1 q-8 *= 100 const
scoreboard players operation q-8-0-1 q-8 *= 1 const
scoreboard players operation q-8-0-1 q-8 /= 100 const
execute unless score q-8-0-1 q-8 matches ..1 run scoreboard players set q-8-0-1 q-8 1
