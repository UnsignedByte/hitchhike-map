scoreboard players operation 4_b stores = count change
data modify storage hitchhike:stores success.ramen set value '[{"score":{"name":"4_B","objective":"stores"}},".",{"score":{"name":"4_b","objective":"stores"}}," Bov is your change. ありがとございました！"]'
# sell items.
function generated:story/stores/ramen/sell
# Reset welcome message
data modify storage hitchhike:stores welcome.ramen set value '"Ready to order?"'
