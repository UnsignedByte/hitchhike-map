execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"spoon"}}] at @s run function generated:story/maze/weapons/weapon_pickup_handle/spoon
execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"commandblock"}}] at @s run function generated:story/maze/weapons/weapon_pickup_handle/commandblock
execute as @e[tag=maze-weapon-displaystand,nbt={Item:{tag:{weapon:"frenchflag"}}] at @s run function generated:story/maze/weapons/weapon_pickup_handle/frenchflag
execute if score enabled maze matches 1 run schedule function generated:story/maze/weapons/weapon_pickup_handle 5t
