execute if score -held story-sawyer matches 1 at @e[tag=sawyer-holder,limit=1] run tp @e[tag=npc-sawyer] ~ ~30 ~ ~90 0
execute if score -held story-sawyer matches -1 at @e[tag=sawyer-holder,limit=1] run tp @e[tag=npc-sawyer] ~ ~30 ~ ~-90 0

execute if score enabled maze matches 1 run function hitchhike:story/sawyer/maze/tick

execute as @a[x=887,y=70,z=10,dx=16,dy=4,dz=12,nbt={SelectedItem:{tag:{sawyershovel:1b}}}] run item modify entity @s weapon.mainhand hitchhike:sawyershovel_enable

execute as @a[nbt={SelectedItem:{tag:{sawyershovel:1b}}}] unless entity @s[x=887,y=70,z=10,dx=16,dy=4,dz=12] run item modify entity @s weapon.mainhand generated:disallow_mine