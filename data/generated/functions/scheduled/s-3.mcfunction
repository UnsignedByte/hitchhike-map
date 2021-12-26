execute positioned 898.5 61 -61.5 if entity @a[distance=..30] if predicate hitchhike:onethird run function generated:misc/fountain
execute positioned 892.5 61 -61.5 if entity @a[distance=..30] if predicate hitchhike:onethird run function generated:misc/fountain
scoreboard players set _rngm vars 4
setblock 895 40 -73 water[level=1]
setblock 896 40 -74 water[level=1]
setblock 895 40 -75 water[level=1]
setblock 894 40 -74 water[level=1]
function generated:rng/rng
execute if score _rngm vars matches 0 run setblock 895 40 -73 water
execute if score _rngm vars matches 1 run setblock 896 40 -74 water
execute if score _rngm vars matches 2 run setblock 895 40 -75 water
execute if score _rngm vars matches 3 run setblock 894 40 -74 water
schedule function generated:scheduled/s-3 3t
