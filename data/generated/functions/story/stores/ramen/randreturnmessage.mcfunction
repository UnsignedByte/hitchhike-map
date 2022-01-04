scoreboard players set _rngm vars 1
function generated:rng/rng
execute if score rng vars matches 0 run data modify storage hitchhike:stores welcome.ramen set value '"Ready to order?"'
