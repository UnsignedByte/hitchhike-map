#prevent player pickup for the next second
execute as @e[tag=paying] run data modify entity @s PickupDelay set value 20

# count payment and attempt to pay
execute as @e[tag=paying] run function generated:safeway/countpay
scoreboard players operation dec change = paymentcount safeway
execute positioned 893.0 64.5 -153.5 run function generated:change/decrement

# handle fail and success of payment
execute if score dec-success change matches 0 run function hitchhike:safeway/_payfail
execute if score dec-success change matches 1 run function hitchhike:safeway/_paysuccess

# make bov counts readable for later serialization
function hitchhike:safeway/makereadable