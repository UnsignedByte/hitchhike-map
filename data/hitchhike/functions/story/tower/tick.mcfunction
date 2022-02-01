execute if entity @a[x=978,y=245,z=555,dx=16,dy=12,dz=16] run scoreboard players set #tower-climbed vars 1

function hitchhike:story/tower/puzzles/tick

execute if score loadid tower-puzzle-id matches -1 as @a[x=984,y=245,z=561,dx=4,dy=5,dz=4,scores={tower-openbox=1..},nbt={SelectedItem:{tag:{boxkey:1b}}},limit=1] run function generated:story/tower/puzzles/start

scoreboard players set @a tower-openbox 0