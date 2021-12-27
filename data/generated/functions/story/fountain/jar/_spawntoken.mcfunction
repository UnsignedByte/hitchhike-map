scoreboard players remove #tmp fishjar 1
summon item 913 59 -79 {Motion:[0.5f,0.0f,0.0f],Item:{Count: 1b, id: "minecraft:sunflower", tag: {display: {Name: '{"text":"1 BTC","color":"gold"}', Lore: ['{"text":"Valued at 1.00 BOV"}']}}}}
execute if score #tmp fishjar matches 1.. run function generated:story/fountain/jar/_spawntoken
