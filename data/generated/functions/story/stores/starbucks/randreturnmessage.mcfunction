scoreboard players set _rngm vars 2
function generated:rng/rng
execute if score rng vars matches 0 run data modify storage hitchhike:stores welcome.starbucks set value '"Hi, what can I get for you?"'
execute if score rng vars matches 1 run data modify storage hitchhike:stores welcome.starbucks set value '"Hey, what do you want today?"'
