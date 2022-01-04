scoreboard players operation 4_b stores = paymentcount stores
execute if score count change matches 0 run data modify storage hitchhike:stores success.ramen set value '["That\'ll be ",{"score":{"name":"4_B","objective":"stores"}},".",{"score":{"name":"4_b","objective":"stores"}},"Bov."]'
execute if score count change matches 1.. run data modify storage hitchhike:stores success.ramen set value '["You\'re just ",{"score":{"name":"4_B","objective":"stores"}},".",{"score":{"name":"4_b","objective":"stores"}},"Bov short."]'
function generated:story/stores/ramen/randreturnmessage
