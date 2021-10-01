scoreboard players operation _b safeway = count change
data modify storage hitchhike:safeway success_msg set value '["Thank you for shopping at safeway! Your change is ", {"score":{"name":"_B","objective":"safeway"}}, ".", {"score":{"name":"_b","objective":"safeway"}}, " Bov."]'

# sell items.
function generated:safeway/sell