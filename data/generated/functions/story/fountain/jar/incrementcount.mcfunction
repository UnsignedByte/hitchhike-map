kill @e[tag=jar-coin,type=axolotl,x=923,y=44,z=-80,dx=2,dz=2,dy=3]
tp @e[tag=jar-coin,type=item,x=923,y=44,z=-80,dx=2,dz=2,dy=0,sort=random,limit=1] 914 49 -85
execute positioned 914 56 -85 run function generated:change/count
scoreboard players operation #cashcount fishjar = count change
scoreboard players operation c_B fishjar = #cashcount fishjar
scoreboard players operation c_B fishjar /= 100 const
scoreboard players operation c_b fishjar = #cashcount fishjar
scoreboard players operation c_b fishjar %= 100 const
data modify block 914 56 -86 Text3 set value '[{"color":"gold","score":{"name":"c_B","objective":"fishjar"}},{"text":"."},{""score":{"name":"c_b","objective":"fishjar"}},{"text":" Bov"}]'
execute if entity @e[tag=jar-coin,type=item] run schedule function generated:story/fountain/jar/incrementcount 5t
execute unless entity @e[tag=jar-coin,type=item] run schedule function generated:story/fountain/jar/endcount 20t
