execute if entity @a[x=916,y=64,z=191,dx=2,dz=7,dy=2] run function hitchhike:story/simon/start

execute unless score start story-simon matches 1 run schedule function hitchhike:story/simon/await_start 1t