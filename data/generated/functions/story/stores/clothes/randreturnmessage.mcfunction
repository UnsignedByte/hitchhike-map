scoreboard players set _rngm vars 2
function generated:rng/rng
execute if score rng vars matches 0 run data modify storage hitchhike:stores welcome.clothes set value '["I can tell these clothes will fit you ",{"italic":true,"text":"perfectly"},"!"]'
execute if score rng vars matches 1 run data modify storage hitchhike:stores welcome.clothes set value '"I hope you enjoyed our fashionable selection!"'
