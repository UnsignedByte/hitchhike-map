execute as @e[tag=paying] run function generated:safeway/countpay
scoreboard players operation dec change = paymentcount safeway
execute positioned 893.0 64.5 -153.5 run function generated:change/decrement
execute if score dec-success change matches 0 run scoreboard players operation _b safeway = paymentcount safeway
execute if score dec-success change matches 0 run data modify storage hitchhike:safeway success_msg set value '["Your charge is ", {"score":{"name":"_B","objective":"safeway"}}, ".", {"score":{"name":"_b","objective":"safeway"}}, "Bov, but you don\'t seem to have provided enough money."]'
execute if score dec-success change matches 1 run scoreboard players operation _b safeway = count change
execute if score dec-success change matches 1 run data modify storage hitchhike:safeway success_msg set value '["Thank you for shopping at safeway! Your change is ", {"score":{"name":"_B","objective":"safeway"}}, ".", {"score":{"name":"_b","objective":"safeway"}}, " Bov."]'
function hitchhike:safeway/makereadable/e