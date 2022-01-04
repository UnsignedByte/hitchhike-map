scoreboard players set _rngm vars 2
function generated:rng/rng
execute if score rng vars matches 0 run data modify storage hitchhike:stores welcome.boba set value '"Alright, have you made your choices?"'
execute if score rng vars matches 1 run data modify storage hitchhike:stores welcome.boba set value '"I hope you enjoy your drinks!"'
