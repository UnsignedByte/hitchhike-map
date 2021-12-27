setblock 914 56 -85 minecraft:air
scoreboard players operation #tmp fishjar = #guesscount fishjar
scoreboard players operation #tmp fishjar *= 100 const
scoreboard players operation #tmp fishjar -= #cashcount fishjar
execute if score #tmp fishjar matches -250..250 run function hitchhike:story/fountain/jar/success
execute unless score #tmp fishjar matches -250..250 run function hitchhike:story/fountain/jar/fail
