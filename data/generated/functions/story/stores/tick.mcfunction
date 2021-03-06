
execute as @a[nbt={Inventory:[{tag:{store:"safeway",sold:0b}}]}] at @s unless entity @s[x=881,z=-169,dx=36,dz=18] run function generated:story/stores/safeway/lock
# Kill Thrown Items
execute as @e[type=item,nbt={Item:{tag:{store:"safeway",sold:0b}}}] at @s unless entity @s[x=881,z=-169,dx=36,dz=18] run kill @s
execute as @e[type=item,tag=!paying,nbt={Item:{store:"safeway",tag:{sold:0b}},Age:0s},x=881,z=-169,dx=36,dz=18,y=0,dy=255] run data modify entity @s Age set value 5800
tag @e[type=item,nbt={Item:{tag:{store:"safeway",sold:0b}}}] remove paying
tag @e[type=item,nbt={Item:{tag:{store:"safeway",sold:0b}}},x=891,y=65,z=-154,dx=0,dy=0,dz=0] add paying
execute as @e[tag=paying,type=item,x=891,y=65,z=-154,dx=0,dy=0,dz=0] unless entity @s[nbt={Age:-32768s}] run data modify entity @s PickupDelay set value 100
execute as @e[tag=paying,type=item,x=891,y=65,z=-154,dx=0,dy=0,dz=0] run data modify entity @s Age set value -32768
# Deal with triggers
execute as @a unless score @s storetrigger matches 0 at @s if entity @s[x=881,z=-169,dx=36,dz=18] run function generated:story/stores/safeway/handletrigger
# reset status if no items to buy
scoreboard players set @e[tag=npc-safeway] dialogue-status 0
# set status of safeway to paying
execute if entity @e[tag=paying,type=item,x=891,y=65,z=-154,dx=0,dy=0,dz=0] run scoreboard players set @e[tag=npc-safeway] dialogue-status 5

execute as @a[nbt={Inventory:[{tag:{store:"clothes",sold:0b}}]}] at @s unless entity @s[x=973,z=-172,dx=19,dz=19] run function generated:story/stores/clothes/lock
# Kill Thrown Items
execute as @e[type=item,nbt={Item:{tag:{store:"clothes",sold:0b}}}] at @s unless entity @s[x=973,z=-172,dx=19,dz=19] run kill @s
execute as @e[type=item,tag=!paying,nbt={Item:{store:"clothes",tag:{sold:0b}},Age:0s},x=973,z=-172,dx=19,dz=19,y=0,dy=255] run data modify entity @s Age set value 5800
tag @e[type=item,nbt={Item:{tag:{store:"clothes",sold:0b}}}] remove paying
tag @e[type=item,nbt={Item:{tag:{store:"clothes",sold:0b}}},x=983,y=64,z=-168,dx=2,dy=1,dz=0] add paying
execute as @e[tag=paying,type=item,x=983,y=64,z=-168,dx=2,dy=1,dz=0] unless entity @s[nbt={Age:-32768s}] run data modify entity @s PickupDelay set value 100
execute as @e[tag=paying,type=item,x=983,y=64,z=-168,dx=2,dy=1,dz=0] run data modify entity @s Age set value -32768
# Deal with triggers
execute as @a unless score @s storetrigger matches 0 at @s if entity @s[x=973,z=-172,dx=19,dz=19] run function generated:story/stores/clothes/handletrigger
# reset status if no items to buy
scoreboard players set @e[tag=npc-clothes] dialogue-status 0
# set status of clothes to paying
execute if entity @e[tag=paying,type=item,x=983,y=64,z=-168,dx=2,dy=1,dz=0] run scoreboard players set @e[tag=npc-clothes] dialogue-status 5

execute as @a[nbt={Inventory:[{tag:{store:"subway",sold:0b}}]}] at @s unless entity @s[x=941,z=-161,dx=14,dz=20] run function generated:story/stores/subway/lock
# Kill Thrown Items
execute as @e[type=item,nbt={Item:{tag:{store:"subway",sold:0b}}}] at @s unless entity @s[x=941,z=-161,dx=14,dz=20] run kill @s
execute as @e[type=item,tag=!paying,nbt={Item:{store:"subway",tag:{sold:0b}},Age:0s},x=941,z=-161,dx=14,dz=20,y=0,dy=255] run data modify entity @s Age set value 5800
tag @e[type=item,nbt={Item:{tag:{store:"subway",sold:0b}}}] remove paying
tag @e[type=item,nbt={Item:{tag:{store:"subway",sold:0b}}},x=950,y=64,z=-147,dx=2,dy=1,dz=2] add paying
execute as @e[tag=paying,type=item,x=950,y=64,z=-147,dx=2,dy=1,dz=2] unless entity @s[nbt={Age:-32768s}] run data modify entity @s PickupDelay set value 100
execute as @e[tag=paying,type=item,x=950,y=64,z=-147,dx=2,dy=1,dz=2] run data modify entity @s Age set value -32768
# Deal with triggers
execute as @a unless score @s storetrigger matches 0 at @s if entity @s[x=941,z=-161,dx=14,dz=20] run function generated:story/stores/subway/handletrigger
# reset status if no items to buy
scoreboard players set @e[tag=npc-subway] dialogue-status 0
# set status of subway to paying
execute if entity @e[tag=paying,type=item,x=950,y=64,z=-147,dx=2,dy=1,dz=2] run scoreboard players set @e[tag=npc-subway] dialogue-status 5

execute as @a[nbt={Inventory:[{tag:{store:"boba",sold:0b}}]}] at @s unless entity @s[x=993,z=-173,dx=14,dz=20] run function generated:story/stores/boba/lock
# Kill Thrown Items
execute as @e[type=item,nbt={Item:{tag:{store:"boba",sold:0b}}}] at @s unless entity @s[x=993,z=-173,dx=14,dz=20] run kill @s
execute as @e[type=item,tag=!paying,nbt={Item:{store:"boba",tag:{sold:0b}},Age:0s},x=993,z=-173,dx=14,dz=20,y=0,dy=255] run data modify entity @s Age set value 5800
tag @e[type=item,nbt={Item:{tag:{store:"boba",sold:0b}}}] remove paying
tag @e[type=item,nbt={Item:{tag:{store:"boba",sold:0b}}},x=996,y=65,z=-168,dx=0,dy=0,dz=2] add paying
execute as @e[tag=paying,type=item,x=996,y=65,z=-168,dx=0,dy=0,dz=2] unless entity @s[nbt={Age:-32768s}] run data modify entity @s PickupDelay set value 100
execute as @e[tag=paying,type=item,x=996,y=65,z=-168,dx=0,dy=0,dz=2] run data modify entity @s Age set value -32768
# Deal with triggers
execute as @a unless score @s storetrigger matches 0 at @s if entity @s[x=993,z=-173,dx=14,dz=20] run function generated:story/stores/boba/handletrigger
# reset status if no items to buy
scoreboard players set @e[tag=npc-boba] dialogue-status 0
# set status of boba to paying
execute if entity @e[tag=paying,type=item,x=996,y=65,z=-168,dx=0,dy=0,dz=2] run scoreboard players set @e[tag=npc-boba] dialogue-status 5

execute as @a[nbt={Inventory:[{tag:{store:"ramen",sold:0b}}]}] at @s unless entity @s[x=1029,z=-161,dx=14,dz=20] run function generated:story/stores/ramen/lock
# Kill Thrown Items
execute as @e[type=item,nbt={Item:{tag:{store:"ramen",sold:0b}}}] at @s unless entity @s[x=1029,z=-161,dx=14,dz=20] run kill @s
execute as @e[type=item,tag=!paying,nbt={Item:{store:"ramen",tag:{sold:0b}},Age:0s},x=1029,z=-161,dx=14,dz=20,y=0,dy=255] run data modify entity @s Age set value 5800
tag @e[type=item,nbt={Item:{tag:{store:"ramen",sold:0b}}}] remove paying
tag @e[type=item,nbt={Item:{tag:{store:"ramen",sold:0b}}},x=1039,y=65,z=-153,dx=0,dy=0,dz=2] add paying
execute as @e[tag=paying,type=item,x=1039,y=65,z=-153,dx=0,dy=0,dz=2] unless entity @s[nbt={Age:-32768s}] run data modify entity @s PickupDelay set value 100
execute as @e[tag=paying,type=item,x=1039,y=65,z=-153,dx=0,dy=0,dz=2] run data modify entity @s Age set value -32768
# Deal with triggers
execute as @a unless score @s storetrigger matches 0 at @s if entity @s[x=1029,z=-161,dx=14,dz=20] run function generated:story/stores/ramen/handletrigger
# reset status if no items to buy
scoreboard players set @e[tag=npc-ramen] dialogue-status 0
# set status of ramen to paying
execute if entity @e[tag=paying,type=item,x=1039,y=65,z=-153,dx=0,dy=0,dz=2] run scoreboard players set @e[tag=npc-ramen] dialogue-status 5

execute as @a[nbt={Inventory:[{tag:{store:"starbucks",sold:0b}}]}] at @s unless entity @s[x=1044,z=-161,dx=16,dz=20] run function generated:story/stores/starbucks/lock
# Kill Thrown Items
execute as @e[type=item,nbt={Item:{tag:{store:"starbucks",sold:0b}}}] at @s unless entity @s[x=1044,z=-161,dx=16,dz=20] run kill @s
execute as @e[type=item,tag=!paying,nbt={Item:{store:"starbucks",tag:{sold:0b}},Age:0s},x=1044,z=-161,dx=16,dz=20,y=0,dy=255] run data modify entity @s Age set value 5800
tag @e[type=item,nbt={Item:{tag:{store:"starbucks",sold:0b}}}] remove paying
tag @e[type=item,nbt={Item:{tag:{store:"starbucks",sold:0b}}},x=1046,y=65,z=-150,dx=1,dy=0,dz=0] add paying
execute as @e[tag=paying,type=item,x=1046,y=65,z=-150,dx=1,dy=0,dz=0] unless entity @s[nbt={Age:-32768s}] run data modify entity @s PickupDelay set value 100
execute as @e[tag=paying,type=item,x=1046,y=65,z=-150,dx=1,dy=0,dz=0] run data modify entity @s Age set value -32768
# Deal with triggers
execute as @a unless score @s storetrigger matches 0 at @s if entity @s[x=1044,z=-161,dx=16,dz=20] run function generated:story/stores/starbucks/handletrigger
# reset status if no items to buy
scoreboard players set @e[tag=npc-starbucks] dialogue-status 0
# set status of starbucks to paying
execute if entity @e[tag=paying,type=item,x=1046,y=65,z=-150,dx=1,dy=0,dz=0] run scoreboard players set @e[tag=npc-starbucks] dialogue-status 5

scoreboard players reset @a storetrigger
execute as @a at @s if entity @s[x=881,z=-169,dx=36,dz=18] run scoreboard players add @s storetrigger 0
execute as @a at @s if entity @s[x=881,z=-169,dx=36,dz=18] run scoreboard players enable @s storetrigger
execute as @a at @s if entity @s[x=973,z=-172,dx=19,dz=19] run scoreboard players add @s storetrigger 0
execute as @a at @s if entity @s[x=973,z=-172,dx=19,dz=19] run scoreboard players enable @s storetrigger
execute as @a at @s if entity @s[x=941,z=-161,dx=14,dz=20] run scoreboard players add @s storetrigger 0
execute as @a at @s if entity @s[x=941,z=-161,dx=14,dz=20] run scoreboard players enable @s storetrigger
execute as @a at @s if entity @s[x=993,z=-173,dx=14,dz=20] run scoreboard players add @s storetrigger 0
execute as @a at @s if entity @s[x=993,z=-173,dx=14,dz=20] run scoreboard players enable @s storetrigger
execute as @a at @s if entity @s[x=1029,z=-161,dx=14,dz=20] run scoreboard players add @s storetrigger 0
execute as @a at @s if entity @s[x=1029,z=-161,dx=14,dz=20] run scoreboard players enable @s storetrigger
execute as @a at @s if entity @s[x=1044,z=-161,dx=16,dz=20] run scoreboard players add @s storetrigger 0
execute as @a at @s if entity @s[x=1044,z=-161,dx=16,dz=20] run scoreboard players enable @s storetrigger
