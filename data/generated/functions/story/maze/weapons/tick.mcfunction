execute as @e[type=item,nbt={Item:{tag:{isweapon:1b}}}] run function generated:story/maze/weapons/start
kill @e[type=item,nbt={Item:{tag:{isweapon:1b}}}]
execute as @e[tag=maze-weapon-spoon] at @s run function hitchhike:story/maze/weapons/spoon/tick
execute as @e[tag=maze-weapon-frenchflag] at @s run function hitchhike:story/maze/weapons/frenchflag/tick
execute as @e[tag=maze-weapon-commandblock] at @s run function hitchhike:story/maze/weapons/commandblock/tick
execute as @e[tag=maze-weapon-buildtool] at @s run function hitchhike:story/maze/weapons/buildtool/tick
