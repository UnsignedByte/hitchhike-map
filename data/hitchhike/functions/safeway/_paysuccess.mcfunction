scoreboard players operation _b safeway = count change
data modify storage hitchhike:safeway success_msg set value '["Thank you for shopping at safeway! Your change is ", {"score":{"name":"_B","objective":"safeway"}}, ".", {"score":{"name":"_b","objective":"safeway"}}, " Bov."]'

# sell items.
function generated:safeway/sell

# Reset welcome message
data modify storage hitchhike:safeway welcome_message set value '"Hey, I hope you had a great time shopping!"'