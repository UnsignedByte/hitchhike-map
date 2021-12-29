execute as @s at @s run function hitchhike:hitdetect/detect
execute if entity @s[nbt={SelectedItem:{tag:{weapon:"spoon"}}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/spoon/onhit
execute if entity @s[nbt={SelectedItem:{tag:{weapon:"frenchflag"}}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/frenchflag/onhit
execute if entity @s[nbt={SelectedItem:{tag:{weapon:"commandblock"}}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/commandblock/onhit
execute if entity @s[nbt={SelectedItem:{tag:{weapon:"firewall"}}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/firewall/onhit
execute if entity @s[nbt={SelectedItem:{tag:{weapon:"medicine"}}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/medicine/onhit
execute if entity @s[nbt={SelectedItem:{tag:{weapon:"pointer"}}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/pointer/onhit
execute if entity @s[nbt={SelectedItem:{tag:{weapon:"buildtool"}}}] as @e[tag=hitdetect-hit] at @s run function hitchhike:story/maze/weapons/buildtool/onhit
