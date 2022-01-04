#prevent player pickup for the next second
execute as @e[tag=paying,type=item,x=950,y=64,z=-147,dx=2,dy=1,dz=2] run data modify entity @s PickupDelay set value 20
# count payment and attempt to pay
scoreboard players set paymentcount stores 0
execute as @e[tag=paying,type=item,x=950,y=64,z=-147,dx=2,dy=1,dz=2] run function generated:story/stores/countpay
scoreboard players operation dec change = paymentcount stores
execute positioned 986.5000 65.0000 -167.5000 run function generated:change/decrement
# handle fail and success of payment
execute if score dec-success change matches 0 run function generated:story/stores/clothes/_payfail
execute if score dec-success change matches 1 run function generated:story/stores/clothes/_paysuccess
# make bov counts readable for later serialization
scoreboard players operation 1_B stores = 1_b stores
scoreboard players operation 1_B stores /= 100 const
scoreboard players operation 1_b stores %= 100 const
