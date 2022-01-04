scoreboard players set _rngm vars 2
function generated:rng/rng
execute if score rng vars matches 0 run data modify storage hitchhike:stores welcome.subway set value '"Alright, I\'ve got that all down."'
execute if score rng vars matches 1 run data modify storage hitchhike:stores welcome.subway set value '"Great choices! I\'ll get that for you real quick..."'
