scoreboard players operation 0_b stores = paymentcount stores
execute if score count change matches 0 run data modify storage hitchhike:stores success.safeway set value '["Your charge is ",{"score":{"name":"_B"}},".",{"score":{"name":"_b"}},"Bov. Please place your payment in the space to your left!"]'
execute if score count change matches 1.. run data modify storage hitchhike:stores success.safeway set value '["It seems you\'re ",{"score":{"name":"_B"}},".",{"score":{"name":"_b"}},"Bov short. Don\'t worry, addition is hard. Just place the rest of your money on the counter and I can do the math for you!"]'
function generated:story/stores/safeway/randreturnmessage
