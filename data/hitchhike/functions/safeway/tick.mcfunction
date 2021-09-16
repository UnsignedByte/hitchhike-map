# Prevent players from not paying
# Prevent lagging / tping out
execute as @a[nbt={Inventory:[{tag:{sold:0b}}]}] unless entity @s[x=882,z=-168,dx=35,dz=17,y=64,dy=32] run tp @s 895.5 64 -151.325
# send them backin
execute as @a[nbt={Inventory:[{tag:{sold:0b}}]},x=893,z=-151,dx=3,dz=1,y=64,dy=3] at @s run function hitchhike:safeway/lock