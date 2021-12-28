tag @a[x=-1474,z=-257,dx=135,dz=175,y=0,dy=500] remove maze-mob
execute as @a[gamemode=adventure,tag=!maze-mob] unless entity @a[x=-1474,z=-257,dx=135,dz=175,y=0,dy=500] run tp @s -1400.0 11 -150.0

spawnpoint @a -1432 11 -175

execute as @a[x=-1432,y=11,z=-175,dx=0,dy=1,dz=0] run tp @s -1400.0 11 -150.0