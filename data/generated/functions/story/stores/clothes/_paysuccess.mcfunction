scoreboard players operation 1_b stores = count change
data modify storage hitchhike:stores success.clothes set value '["You\'re all set with your new clothes! ",{"score":{"name":"1_B","objective":"stores"}},".",{"score":{"name":"1_b","objective":"stores"}}," Bov is your change."]'
# sell items.
function generated:story/stores/clothes/sell
# Reset welcome message
data modify storage hitchhike:stores welcome.clothes set value '"Set on your new fit? I\'ll ring them up for you right here!"'
