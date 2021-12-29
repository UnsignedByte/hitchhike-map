execute as @e[type=item,nbt={Item:{tag:{isweapon:1b}}},tag=!maze-weapon-displaystand] run function generated:story/maze/weapons/start
execute as @e[tag=maze-weapon-spoon] at @s run function hitchhike:story/maze/weapons/spoon/tick
execute as @e[tag=maze-weapon-frenchflag] at @s run function hitchhike:story/maze/weapons/frenchflag/tick
execute as @e[tag=maze-weapon-commandblock] at @s run function hitchhike:story/maze/weapons/commandblock/tick
execute as @e[tag=maze-weapon-firewall] at @s run function hitchhike:story/maze/weapons/firewall/tick
execute as @e[tag=maze-weapon-medicine] at @s run function hitchhike:story/maze/weapons/medicine/tick
execute as @e[tag=maze-weapon-buildtool] at @s run function hitchhike:story/maze/weapons/buildtool/tick
