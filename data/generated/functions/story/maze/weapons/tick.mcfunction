execute as @e[type=item,nbt={Item:{tag:{isweapon:1b}}}] run function generated:story/maze/weapons/start
kill @e[type=item,nbt={Item:{tag:{isweapon:1b}}}]
execute as @e[tag=maze-weapon-spoon] at @s run function hitchhike:story/maze/weapons/spoon/tick
