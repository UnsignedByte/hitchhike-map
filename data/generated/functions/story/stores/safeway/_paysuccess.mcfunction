scoreboard players operation 0_b stores = count change
data modify storage hitchhike:stores success.safeway set value '["Thanks for shopping at Safeway! Your change is ",{"score":{"name":"0_B","objective":"stores"}},".",{"score":{"name":"0_b","objective":"stores"}}," Bov."]'
# sell items.
function generated:story/stores/safeway/sell
# Reset welcome message
data modify storage hitchhike:stores welcome.safeway set value '"Hope you had a great time shopping!"'
