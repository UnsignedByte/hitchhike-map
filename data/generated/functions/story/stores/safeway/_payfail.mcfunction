scoreboard players operation 0_b stores = paymentcount stores
execute if score count change matches 0 run data modify storage hitchhike:stores success.safeway set value '["The total charge is ",{"score":{"name":"0_B","objective":"stores"}},".",{"score":{"name":"0_b","objective":"stores"}}," Bov. Please place your payment in the space to your left!"]'
execute if score count change matches 1.. run data modify storage hitchhike:stores success.safeway set value '["It seems like you\'re ",{"score":{"name":"0_B","objective":"stores"}},".",{"score":{"name":"0_b","objective":"stores"}}," Bov short. Don\'t worry, addition can be hard for all of us. Just place the rest of your money on the counter and I can do the math for you!"]'
function generated:story/stores/safeway/randreturnmessage
