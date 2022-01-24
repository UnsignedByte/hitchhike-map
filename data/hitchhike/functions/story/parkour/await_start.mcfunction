execute if entity @a[x=817,y=114,z=409,dx=0,dy=1,dz=0] run function hitchhike:story/parkour/start

execute unless score #parkour-started vars matches 1 run schedule function hitchhike:story/parkour/await_start 1t