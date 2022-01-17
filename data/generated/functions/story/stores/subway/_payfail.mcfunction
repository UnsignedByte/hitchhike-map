scoreboard players operation paymentcount stores -= count change
scoreboard players operation 2_b stores = paymentcount stores
execute if score count change matches 0 run data modify storage hitchhike:stores success.subway set value '["That\'ll be ",{"score":{"name":"2_B","objective":"stores"}},".",{"score":{"name":"2_b","objective":"stores"}}," Bov total."]'
execute if score count change matches 1.. run data modify storage hitchhike:stores success.subway set value '["You\'re still missing ",{"score":{"name":"2_B","objective":"stores"}},".",{"score":{"name":"2_b","objective":"stores"}}," Bov. Mind getting the rest paid up?"]'
function generated:story/stores/subway/randreturnmessage
