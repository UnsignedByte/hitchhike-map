execute if entity @a[x=1009,y=59,z=58,dz=2] run function hitchhike:story/intro/start

execute unless score start story-intro matches 1 run schedule function hitchhike:story/intro/await_start 1t