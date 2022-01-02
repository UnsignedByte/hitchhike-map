
#> store safeway
function generated:stores/safeway/lock
# Kill Thrown Items
execute as @e[type=item,nbt={Item:{tag:{store:"safeway",sold:0b}}}] unless entity @s[x=881,z=-169,dx=36,dz=18] run kill @s
execute as @e[type=item,tag=!paying,nbt={Item:{store:"safeway",tag:{sold:0b}},Age:0s},x=881,z=-169,dx=36,dz=18] run data modify entity @s Age set value 5800
tag @e[type=item,nbt={Item:{tag:{store:"safeway",sold:0b}}}] remove paying
tag @e[type=item,nbt={Item:{tag:{store:"safeway",sold:0b}}},x=891,y=65,z=891,dx=0,dy=0,dz=0] add paying
execute as @e[tag=paying,type=item,x=891,y=65,z=891,dx=0,dy=0,dz=0] run data modify entity @s Age set value -32768
# reset status if no items to buy
scoreboard players set @e[tag=npc-safeway] dialogue-status 0
# set status of safeway to paying
execute if entity @e[tag=paying,type=item,x=891,y=65,z=891,dx=0,dy=0,dz=0] run scoreboard players set @e[tag=npc-safeway] dialogue-status 5
