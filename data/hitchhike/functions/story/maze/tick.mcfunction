function hitchhike:story/maze/mobs/tick

execute if score enabled maze matches 1 run function hitchhike:story/maze/weapons/tick

execute as @a[tag=maze-mob,tag=hitdetect-hitter] at @s run function generated:story/maze/weapons/detecthit

execute as @a[tag=maze-mob,scores={maze-placed=1..}] at @s anchored eyes positioned ^ ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function generated:story/maze/weapons/buildtool/detect

scoreboard players set @a[tag=maze-mob] maze-placed 0

execute as @e[tag=maze-buildtool-timer,scores={maze-weapon-age=100..}] at @s run function hitchhike:story/maze/weapons/buildtool/destroytimer

scoreboard players add @e[tag=maze-buildtool-timer] maze-weapon-age 1