execute if entity @a[x=906,y=64,z=186,dx=13,dz=5,dy=1,tag=!spoken-to] run function hitchhike:story/simon/start

scoreboard players set @a foodGoal 41

execute unless score start story-simon matches 1 run schedule function hitchhike:story/simon/await_start 1t