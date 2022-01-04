scoreboard players operation 2_b stores = paymentcount stores
execute if score count change matches 0 run data modify storage hitchhike:stores success.subway set value '["That\'ll be ",{"score":{"name":"2_B","objective":"stores"}},".",{"score":{"name":"2_b","objective":"stores"}},"Bov."]'
execute if score count change matches 1.. run data modify storage hitchhike:stores success.subway set value '["You\'re still missing ",{"score":{"name":"2_B","objective":"stores"}},".",{"score":{"name":"2_b","objective":"stores"}},"Bov. Don\'t worry about the math though, I can calculate the change for you."]'
function generated:story/stores/subway/randreturnmessage
