# Prevent players from not paying
# Prevent lagging / tping out
execute as @a[nbt={Inventory:[{tag:{sold:0b}}]}] unless entity @s[x=882,z=-168,dx=35,dz=17,y=64,dy=32] run tp @s 895.5 64 -151.325
# send them backin
execute as @a[nbt={Inventory:[{tag:{sold:0b}}]},x=893,z=-151,dx=3,dz=1,y=64,dy=3] at @s run function hitchhike:safeway/lock

# kill thrown items out of safeway
execute as @e[type=item,nbt={Item:{tag:{sold:0b}}}] unless entity @s[x=882,z=-168,dx=35,dz=17,y=64,dy=32] run kill @s

# PAYMENT MANAGER
execute as @e[x=889,dx=1,z=-154,dz=1,y=65,dy=1] run data modify entity @s Motion[0] set value 0.025