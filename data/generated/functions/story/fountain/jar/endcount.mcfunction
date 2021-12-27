scoreboard players operation #tmp fishjar = #guesscount fishjar
scoreboard players operation #tmp fishjar *= 100 const
scoreboard players operation #tmp fishjar -= #cashcount fishjar
execute if score #tmp fishjar matches -100..100 run function hitchhike:story/fountain/jar/success
execute unless score #tmp fishjar matches -100..100 run function hitchhike:story/fountain/jar/fail
