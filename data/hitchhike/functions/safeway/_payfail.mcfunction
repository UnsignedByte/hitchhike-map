scoreboard players operation _b safeway = paymentcount safeway
execute if score count change matches 0 run data modify storage hitchhike:safeway success_msg set value '["Your charge is ", {"score":{"name":"_B","objective":"safeway"}}, ".", {"score":{"name":"_b","objective":"safeway"}}, "Bov. Please place your payment in the space to your left!"]'
execute if score count change matches 1.. run data modify storage hitchhike:safeway success_msg set value '["It seems you\'re ", {"score":{"name":"_B","objective":"safeway"}}, ".", {"score":{"name":"_b","objective":"safeway"}}, "Bov, short. Don\'t worry, addition is hard. Just place the rest of your money on the counter and I can do the math for you!"]'

function generated:safeway/randreturnmessage