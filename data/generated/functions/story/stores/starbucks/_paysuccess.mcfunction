scoreboard players operation 5_b stores = count change
data modify storage hitchhike:stores success.starbucks set value '["Great! Here\'s ",{"score":{"name":"5_B","objective":"stores"}},".",{"score":{"name":"5_b","objective":"stores"}}," Bov for change. Enjoy your day!"]'
# sell items.
function generated:story/stores/starbucks/sell
# Reset welcome message
data modify storage hitchhike:stores welcome.starbucks set value '"Alright, what can I get you? The menu is on the billboard right above me."'
