
#> store safeway
execute as @a[nbt={Inventory:[{tag:{store:"safeway",sold:0b}}]}] at @s unless entity @s[x=881,z=-169,dx=36,dz=18] run function generated:story/stores/safeway/lock
# Kill Thrown Items
execute as @e[type=item,nbt={Item:{tag:{store:"safeway",sold:0b}}}] at @s unless entity @s[x=881,z=-169,dx=36,dz=18] run kill @s
execute as @e[type=item,tag=!paying,nbt={Item:{store:"safeway",tag:{sold:0b}},Age:0s},x=881,z=-169,dx=36,dz=18,y=0,dy=255] run data modify entity @s Age set value 5800
tag @e[type=item,nbt={Item:{tag:{store:"safeway",sold:0b}}}] remove paying
tag @e[type=item,nbt={Item:{tag:{store:"safeway",sold:0b}}},x=891,y=65,z=-154,dx=0,dy=0,dz=0] add paying
execute as @e[tag=paying,type=item,x=891,y=65,z=-154,dx=0,dy=0,dz=0] run data modify entity @s Age set value -32768
# Deal with triggers
execute as @a[x=881,z=-169,dx=36,dz=18] run function generated:story/stores/safeway/handletrigger
# reset status if no items to buy
scoreboard players set @e[tag=npc-safeway] dialogue-status 0
# set status of safeway to paying
execute if entity @e[tag=paying,type=item,x=891,y=65,z=-154,dx=0,dy=0,dz=0] run scoreboard players set @e[tag=npc-safeway] dialogue-status 5

#> store clothes
execute as @a[nbt={Inventory:[{tag:{store:"clothes",sold:0b}}]}] at @s unless entity @s[x=973,z=-172,dx=19,dz=19] run function generated:story/stores/clothes/lock
# Kill Thrown Items
execute as @e[type=item,nbt={Item:{tag:{store:"clothes",sold:0b}}}] at @s unless entity @s[x=973,z=-172,dx=19,dz=19] run kill @s
execute as @e[type=item,tag=!paying,nbt={Item:{store:"clothes",tag:{sold:0b}},Age:0s},x=973,z=-172,dx=19,dz=19,y=0,dy=255] run data modify entity @s Age set value 5800
tag @e[type=item,nbt={Item:{tag:{store:"clothes",sold:0b}}}] remove paying
tag @e[type=item,nbt={Item:{tag:{store:"clothes",sold:0b}}},x=977,y=65,z=-169,dx=9,dy=0,dz=1] add paying
execute as @e[tag=paying,type=item,x=977,y=65,z=-169,dx=9,dy=0,dz=1] run data modify entity @s Age set value -32768
# Deal with triggers
execute as @a[x=973,z=-172,dx=19,dz=19] run function generated:story/stores/clothes/handletrigger
# reset status if no items to buy
scoreboard players set @e[tag=npc-clothes] dialogue-status 0
# set status of clothes to paying
execute if entity @e[tag=paying,type=item,x=977,y=65,z=-169,dx=9,dy=0,dz=1] run scoreboard players set @e[tag=npc-clothes] dialogue-status 5

scoreboard players reset @a storetrigger
