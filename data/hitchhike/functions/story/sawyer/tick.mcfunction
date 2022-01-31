execute if score -held story-sawyer matches 1 at @e[tag=sawyer-holder,limit=1] run tp @e[tag=npc-sawyer] ~ ~30 ~ ~90 0
execute if score -held story-sawyer matches -1 at @e[tag=sawyer-holder,limit=1] run tp @e[tag=npc-sawyer] ~ ~30 ~ ~-90 0

execute if score enabled maze matches 1 run function hitchhike:story/sawyer/maze/tick

execute as @a[x=-1474,z=-257,dx=135,dz=175,y=0,dy=500,nbt={Inventory:[{Slot:100b}]}] unless entity @s[nbt={Inventory:[{Slot:100b,tag:{clownshoes:1b}}]}] run tag @s add lobby-uncompliant
execute as @a[tag=lobby-uncompliant] at @s run function hitchhike:story/sawyer/maze/lobbyuncompliant
tag @a remove lobby-uncompliant

execute as @a[x=887,y=70,z=10,dx=16,dy=4,dz=12,nbt={SelectedItem:{tag:{sawyershovel:1b}}}] run item modify entity @s weapon.mainhand hitchhike:sawyershovel_enable

execute as @a[nbt={SelectedItem:{tag:{sawyershovel:1b}}}] unless entity @s[x=887,y=70,z=10,dx=16,dy=4,dz=12] run item modify entity @s weapon.mainhand generated:disallow_mine

execute unless score enabled maze matches 1 run clear @a #hitchhike:weapons{tag:{weapon:1b}}