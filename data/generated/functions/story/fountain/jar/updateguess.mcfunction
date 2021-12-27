execute positioned 914.5 49 -72.5 as @e[type=item,distance=..1,nbt={Item:{id: "minecraft:sunflower", tag: {display: {Name: '{"text":"1 BTC","color":"gold"}', Lore: ['{"text":"Valued at 1.00 BOV"}']}}}}] run function generated:story/fountain/jar/_updateguess
data modify entity @e[tag=fishjar-guess-display,limit=1] CustomName set value '[{"text":"Current Guess: ","color":"gold","bold":true},{"score":{"name":"guesscount","objective":"fishjar"}},{"text":" Bov"}]'
execute positioned 914.5 49 -72.5 run tp @e[type=item,distance=..1] 914.5 55 -73.5
