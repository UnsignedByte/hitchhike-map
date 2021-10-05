execute if entity @a[x=906,y=64,z=186,dx=13,dz=4,dy=1] run function hitchhike:story/simon/start

execute unless score start story-simon matches 1 run schedule function hitchhike:story/simon/await_start 1t