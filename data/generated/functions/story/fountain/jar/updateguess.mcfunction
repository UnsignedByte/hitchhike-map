execute positioned 914.5 49 -72.5 if entity @e[type=item,distance=..1,nbt={Item:{id: "minecraft:sunflower", tag: {display: {Name: '{"text":"1 BTC","color":"gold"}', Lore: ['{"text":"Valued at 1.00 BCK"}']}}}}] run playsound minecraft:entity.experience_orb.pickup neutral @a 914 56 -73 1
execute positioned 914.5 49 -72.5 as @e[type=item,distance=..1,nbt={Item:{id: "minecraft:sunflower", tag: {display: {Name: '{"text":"1 BTC","color":"gold"}', Lore: ['{"text":"Valued at 1.00 BCK"}']}}}}] run function generated:story/fountain/jar/_updateguess
data modify block 914 56 -72 Text3 set value '[{"color":"gold","score":{"name":"#guesscount","objective":"fishjar"}},{"text":".00 Bck"}]'
execute positioned 914.5 49 -72.5 run tp @e[type=item,distance=..1] 914.5 55 -74.5
