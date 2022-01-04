scoreboard players operation 2_b stores = count change
data modify storage hitchhike:stores success.subway set value '["Have a nice one! Here, ",{"score":{"name":"2_B","objective":"stores"}},".",{"score":{"name":"2_b","objective":"stores"}}," Bov is your change."]'
# sell items.
function generated:story/stores/subway/sell
# Reset welcome message
data modify storage hitchhike:stores welcome.subway set value '"Hey there, ready to order?"'
