# Prevent players from not paying
# Prevent lagging / tping out
execute as @a[nbt={Inventory:[{tag:{sold:0b}}]}] unless entity @s[x=882,z=-168,dx=35,dz=17,y=64,dy=32] run tp @s 895.5 64 -151.325
# send them backin
execute as @a[nbt={Inventory:[{tag:{sold:0b}}]},x=893,z=-151,dx=3,dz=1,y=64,dy=3] at @s run function hitchhike:safeway/lock

# kill thrown items out of safeway
execute as @e[type=item,nbt={Item:{tag:{sold:0b}}}] unless entity @s[x=882,z=-168,dx=35,dz=17,y=64,dy=32] run kill @s
# unsold items die after 10 seconds, to avoid stuck items, etc.
execute as @e[type=item,tag=!paying,nbt={Item:{tag:{sold:0b}}},x=882,z=-168,dx=35,dz=17,y=64,dy=32] unless entity @s[type=item,x=889,dx=1,z=-154,y=65,dy=0] run data modify entity @s Age set value 5800

# PAYMENT MANAGER
# move items over
execute as @e[type=item,x=889,dx=1,z=-154,y=65,dy=0] run data modify entity @s Motion[0] set value 0.025

tp @e[tag=paying] unless entity @s[x=891,z=-154,y=65,dy=0] 891 65 -154
# items being paid for cannot despawn
execute as @e[type=item,tag=!paying,nbt={Item:{tag:{sold:0b}}},x=891,z=-154,y=65,dy=0] run data modify entity @s Age set value -32768
tag @e[type=item,tag=!paying,nbt={Item:{tag:{sold:0b}}},x=891,z=-154,y=65,dy=0] add paying

# reset status if no items to buy
scoreboard players set @e[tag=npc-cashier] dialogue-status 0
# set status of cashier to paying
execute if entity @e[tag=paying] run scoreboard players set @e[tag=npc-cashier] dialogue-status 5