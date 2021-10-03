execute if entity @a[x=1011,y=59,dy=1,z=64] run function hitchhike:story/intro/start

execute unless score start story-intro matches 1 run schedule function hitchhike:story/intro/await_start 1t