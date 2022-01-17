scoreboard players set _rngm vars 2
function generated:rng/rng
execute if score rng vars matches 0 run data modify storage hitchhike:stores welcome.ramen set value '"Thank you for your order!"'
execute if score rng vars matches 1 run data modify storage hitchhike:stores welcome.ramen set value '"Make sure to leave a good review if you enjoy your food!"'
