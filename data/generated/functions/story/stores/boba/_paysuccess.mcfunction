scoreboard players operation 3_b stores = count change
data modify storage hitchhike:stores success.boba set value '["Alright, ",{"score":{"name":"3_B","objective":"stores"}},".",{"score":{"name":"3_b","objective":"stores"}}," Bov is your change. Have a nice day!"]'
# sell items.
function generated:story/stores/boba/sell
# Reset welcome message
data modify storage hitchhike:stores welcome.boba set value '"Welcome to SiTea, voted the best boba shop in town for the past 10 years!"'
