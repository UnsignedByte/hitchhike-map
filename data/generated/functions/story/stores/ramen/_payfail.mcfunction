scoreboard players operation paymentcount stores -= count change
scoreboard players operation 4_b stores = paymentcount stores
execute if score count change matches 0 run data modify storage hitchhike:stores success.ramen set value '["That\'ll be ",{"score":{"name":"4_B","objective":"stores"}},".",{"score":{"name":"4_b","objective":"stores"}}," Bck for your food."]'
execute if score count change matches 1.. run data modify storage hitchhike:stores success.ramen set value '["You seem to be short some money. The charge left is ",{"score":{"name":"4_B","objective":"stores"}},".",{"score":{"name":"4_b","objective":"stores"}},"Bck."]'
function generated:story/stores/ramen/randreturnmessage
