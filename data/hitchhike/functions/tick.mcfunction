# Prevent players from not paying
execute as @a[nbt={Inventory:[{tag:{sold:0b}}]},x=893,z=-151,dx=3,dz=1] at @s run function hitchhike:safeway_lock