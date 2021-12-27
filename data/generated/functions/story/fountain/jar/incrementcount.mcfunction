kill @e[tag=jar-coin,type=axolotl,x=923,y=44,z=-80,dx=2,dz=2,dy=3]
tp @e[tag=jar-coin,type=item,x=923,y=44,z=-80,dx=2,dz=2,dy=0,sort=random,limit=1] 914 49 -85
execute positioned 914 55 -85 run function generated:change/count
execute unless score count change = #cashcount fishjar run function generated:story/fountain/jar/drain/chime
scoreboard players operation #cashcount fishjar = count change
scoreboard players operation c_B fishjar = #cashcount fishjar
scoreboard players operation c_B fishjar /= 100 const
scoreboard players operation c_b fishjar = #cashcount fishjar
scoreboard players operation c_b fishjar %= 100 const
data modify block 914 56 -86 Text3 set value '[{"color":"gold","score":{"name":"c_B","objective":"fishjar"}},{"text":"."},{"score":{"name":"c_b","objective":"fishjar"}},{"text":" Bov"}]'
execute as @e[tag=jar-coin,type=item] unless entity @s[x=914,y=55,z-85,dx=0,dy=0,dz=0] run tag @s add jar-coin-unfinished
execute if entity @e[tag=jar-coin-unfinished,type=item] run schedule function generated:story/fountain/jar/incrementcount 5t
execute unless entity @e[tag=jar-coin-unfinished,type=item] run schedule function generated:story/fountain/jar/endcount 20t
tag @e remove jar-coin-unfinished
