scoreboard players set _rngm vars 7
function generated:rng/rng
execute if score rng vars matches 0 run data modify storage hitchhike:stores welcome.safeway set value '"Let me count up your items real quick..."'
execute if score rng vars matches 1 run data modify storage hitchhike:stores welcome.safeway set value '"Hope you\'re having a great day!"'
execute if score rng vars matches 2 run data modify storage hitchhike:stores welcome.safeway set value '"Thanks for shopping at safeway!"'
execute if score rng vars matches 3 run data modify storage hitchhike:stores welcome.safeway set value '"Hope you found what you wanted!"'
execute if score rng vars matches 4 run data modify storage hitchhike:stores welcome.safeway set value '"Hi, how\'s your day going?"'
execute if score rng vars matches 5 run data modify storage hitchhike:stores welcome.safeway set value '"Enjoyed your time shopping here?"'
execute if score rng vars matches 6 run data modify storage hitchhike:stores welcome.safeway set value '"Nice weather today, huh?"'
