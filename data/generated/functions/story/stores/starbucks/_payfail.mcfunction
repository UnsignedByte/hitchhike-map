scoreboard players operation 5_b stores = paymentcount stores
execute if score count change matches 0 run data modify storage hitchhike:stores success.starbucks set value '["Alright, that\'ll be a total of ",{"score":{"name":"5_B","objective":"stores"}},".",{"score":{"name":"5_b","objective":"stores"}}," Bov for your drink."]'
execute if score count change matches 1.. run data modify storage hitchhike:stores success.starbucks set value '["Sorry, I\'m still missing\' ",{"score":{"name":"5_B","objective":"stores"}},".",{"score":{"name":"5_b","objective":"stores"}}," Bov. Don\'t worry, I can calculate the change for you."]'
function generated:story/stores/starbucks/randreturnmessage
