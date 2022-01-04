#prevent player pickup for the next second
execute as @e[tag=paying,type=item,x=977,y=65,z=-169,dx=9,dy=0,dz=1] run data modify entity @s PickupDelay set value 20
# count payment and attempt to pay
scoreboard players set paymentcount stores 0
execute as @e[tag=paying,type=item,x=977,y=65,z=-169,dx=9,dy=0,dz=1] run function generated:story/stores/countpay
scoreboard players operation dec change = paymentcount stores
execute positioned 950.5000 64.5000 -144.5000 run function generated:change/decrement
# handle fail and success of payment
execute if score dec-success change matches 0 run function generated:story/stores/subway/_payfail
execute if score dec-success change matches 1 run function generated:story/stores/subway/_paysuccess
# make bov counts readable for later serialization
scoreboard players operation 2_B stores = 2_b stores
scoreboard players operation 2_B stores /= 100 const
scoreboard players operation 2_b stores %= 100 const
