#prevent player pickup for the next second
execute as @e[tag=paying,type=item,x=891,y=65,z=891,dx=0,dy=0,dz=0] run data modify entity @s PickupDelay set value 20
# count payment and attempt to pay
execute as @e[tag=paying,type=item,x=891,y=65,z=891,dx=0,dy=0,dz=0] run function generated:stores/countpay
scoreboard players operation dec change = paymentcount stores
execute positioned 893 64.5 -153.5 run function generated:change/decrement
# handle fail and success of payment
execute if score dec-success change matches 0 run function generated:story/stores/safeway/_payfail
execute if score dec-success change matches 1 run function generated:story/stores/safeway/_paysuccess
# make bov counts readable for later serialization
scoreboard players operation 0_B stores = 0_b stores
scoreboard players operation 0_B stores /= 100 const
scoreboard players operation 0_b stores %= 100 const
