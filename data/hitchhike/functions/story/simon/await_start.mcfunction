execute if score visitfriend quest-status matches -1 unless entity @e[tag=npc,tag=speaking] if entity @a[x=906,y=64,z=186,dx=13,dz=5,dy=1,tag=!spoken-to] run function hitchhike:story/simon/start

execute unless score start story-simon matches 1 run schedule function hitchhike:story/simon/await_start 1t