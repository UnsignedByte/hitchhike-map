scoreboard players operation paymentcount stores -= count change
scoreboard players operation 1_b stores = paymentcount stores
execute if score count change matches 0 run data modify storage hitchhike:stores success.clothes set value '["That\'s a total of ",{"score":{"name":"1_B","objective":"stores"}},".",{"score":{"name":"1_b","objective":"stores"}}," Bck. Just place your payment on the square to your right!"]'
execute if score count change matches 1.. run data modify storage hitchhike:stores success.clothes set value '["It seems you\'re missing ",{"score":{"name":"1_B","objective":"stores"}},".",{"score":{"name":"1_b","objective":"stores"}}," Bck. Just place the rest of your money on the square to your right and I\'ll complete your purchase!"]'
function generated:story/stores/clothes/randreturnmessage
