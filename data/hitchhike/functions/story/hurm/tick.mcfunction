execute as @a[x=1238,y=111,z=312,dx=12,dy=10,dz=13,nbt={SelectedItem:{tag:{hurmpick:1b}}}] run item modify entity @s weapon.mainhand hitchhike:hurmpick_enable

execute as @a[nbt={SelectedItem:{tag:{hurmpick:1b}}}] unless entity @s[x=1238,y=111,z=312,dx=12,dy=10,dz=13] run item modify entity @s weapon.mainhand generated:disallow_mine

execute if entity @a[scores={hurm-mined=1..}] as @e[tag=hurm-mine-coal] at @s if block ~ ~ ~ air run function hitchhike:story/hurm/handle_coal