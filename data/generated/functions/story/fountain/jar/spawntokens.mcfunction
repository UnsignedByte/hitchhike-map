execute positioned 914 49 -79 run function generated:change/count
scoreboard players operation dec change = count change
scoreboard players operation dec change /= 10 const
scoreboard players operation #tmp fishjar = dec change
execute if score #tmp fishjar matches 1.. run function generated:story/fountain/jar/_spawntoken
scoreboard players operation dec change *= 10 const
execute positioned 914 49 -79 run function generated:change/decrement
execute positioned 914 49 -79 run tp @e[type=item] 914 56 -79
