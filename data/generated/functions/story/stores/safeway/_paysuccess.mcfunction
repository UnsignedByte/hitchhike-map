scoreboard players operation 0_b stores = count change
data modify storage hitchhike:stores success.safeway set value '["Thank you for shopping at safeway! Your change is ",{"score":{"name":"_B"}},".",{"score":{"name":"_b"}}," Bov."]'
# sell items.
function generated:story/stores/safeway/sell
# Reset welcome message
data modify storage hitchhike:stores welcome.safeway set value '"Hey, I hope you had a great time shopping!"'
