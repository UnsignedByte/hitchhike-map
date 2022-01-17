scoreboard players operation oq-12-0-1 q-12 = q-12-0-1 q-12
scoreboard players set q-12-0-1 q-12 0
execute if entity @a[x=1072,y=125,z=352,dx=6,dz=7,dy=2] run scoreboard players add q-12-0-1 q-12 1
scoreboard players operation q-12-0-1 q-12 *= 100 const
scoreboard players operation q-12-0-1 q-12 *= 1 const
scoreboard players operation q-12-0-1 q-12 /= 100 const
execute unless score q-12-0-1 q-12 matches ..1 run scoreboard players set q-12-0-1 q-12 1
