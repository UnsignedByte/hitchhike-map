tag @a[x=-1474,z=-257,dx=135,dz=175,y=0,dy=500] remove maze-mob
execute as @a[gamemode=adventure,tag=!maze-mob] unless entity @a[x=-1474,z=-257,dx=135,dz=175,y=0,dy=500] run tp @s -1400.0 13 -150.0 -180 0

spawnpoint @a -1432 11 -175

execute as @a[x=-1432,y=11,z=-175,dx=0,dy=1,dz=0] run tp @s -1400.0 13 -150.0 -180 0

execute as @a[x=-1474,z=-257,dx=135,dz=175,y=0,dy=500,nbt={Inventory:[{Slot:100b}]}] unless entity @s[nbt={Inventory:[{Slot:100b,tag:{clownshoes:1b}}]}] run tag @s add lobby-uncompliant
execute as @a[tag=lobby-uncompliant] at @s run function hitchhike:story/sawyer/maze/lobbyuncompliant
tag @a remove lobby-uncompliant