scoreboard players operation 3_b stores = paymentcount stores
execute if score count change matches 0 run data modify storage hitchhike:stores success.boba set value '["Your total is ",{"score":{"name":"3_B","objective":"stores"}},".",{"score":{"name":"3_b","objective":"stores"}}," Bov."]'
execute if score count change matches 1.. run data modify storage hitchhike:stores success.boba set value '["You\'re only missing ",{"score":{"name":"3_B","objective":"stores"}},".",{"score":{"name":"3_b","objective":"stores"}}," Bov."]'
function generated:story/stores/boba/randreturnmessage
