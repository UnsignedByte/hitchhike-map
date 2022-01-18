scoreboard players operation 2_b stores = count change
data modify storage hitchhike:stores success.subway set value '["Have a great day. Here, have your change, ",{"score":{"name":"2_B","objective":"stores"}},".",{"score":{"name":"2_b","objective":"stores"}}," Bck."]'
# sell items.
function generated:story/stores/subway/sell
# Reset welcome message
data modify storage hitchhike:stores welcome.subway set value '"Are you ready to order yet?"'
