scoreboard players operation oq-11-0-1 q-11 = q-11-0-1 q-11
scoreboard players set q-11-0-1 q-11 0
execute if entity @a[x=1072,y=125,z=352,dx=6,dz=7,dy=2] run scoreboard players add q-11-0-1 q-11 1
scoreboard players operation q-11-0-1 q-11 *= 100 const
scoreboard players operation q-11-0-1 q-11 *= 1 const
scoreboard players operation q-11-0-1 q-11 /= 100 const
execute unless score q-11-0-1 q-11 matches ..1 run scoreboard players set q-11-0-1 q-11 1
