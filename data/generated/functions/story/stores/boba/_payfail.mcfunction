scoreboar players operation paymentcount stores -= count change
scoreboard players operation 3_b stores = paymentcount stores
execute if score count change matches 0 run data modify storage hitchhike:stores success.boba set value '["Your total today will be ",{"score":{"name":"3_B","objective":"stores"}},".",{"score":{"name":"3_b","objective":"stores"}}," Bov."]'
execute if score count change matches 1.. run data modify storage hitchhike:stores success.boba set value '["It seems like you\'re short ",{"score":{"name":"3_B","objective":"stores"}},".",{"score":{"name":"3_b","objective":"stores"}}," Bov. Drop the money here once you\'ve got that added up!"]'
function generated:story/stores/boba/randreturnmessage
