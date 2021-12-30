scoreboard players operation oq-10-0-1 q-10 = q-10-0-1 q-10
scoreboard players set q-10-0-1 q-10 0
execute if entity @a[x=1072,y=125,z=352,dx=6,dz=7,dy=2] run scoreboard players add q-10-0-1 q-10 1
scoreboard players operation q-10-0-1 q-10 *= 100 const
scoreboard players operation q-10-0-1 q-10 *= 1 const
scoreboard players operation q-10-0-1 q-10 /= 100 const
execute unless score q-10-0-1 q-10 matches ..1 run scoreboard players set q-10-0-1 q-10 1
