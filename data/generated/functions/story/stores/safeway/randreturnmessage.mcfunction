scoreboard players set _rngm vars 6
function generated:rng/rng
execute if score rng vars matches 0 run data modify storage hitchhike:stores welcome.safeway set value '"Let me count up your items real quick..."'
execute if score rng vars matches 1 run data modify storage hitchhike:stores welcome.safeway set value '"Great purchase, I have some of these myself."'
execute if score rng vars matches 2 run data modify storage hitchhike:stores welcome.safeway set value '"Hope you found what you wanted!"'
execute if score rng vars matches 3 run data modify storage hitchhike:stores welcome.safeway set value '"Keep in mind that you can always sign up for our rewards system!"'
execute if score rng vars matches 4 run data modify storage hitchhike:stores welcome.safeway set value '"Enjoyed your time shopping here?"'
execute if score rng vars matches 5 run data modify storage hitchhike:stores welcome.safeway set value '"Nice weather, huh? If you ignore that whole storm, that is..."'
