tp @s ~ ~ -151.325
scoreboard players operation @s safeway_lock -= @s playtime
execute unless score @s safeway_lock matches 1.. run tellraw @s ["<",{"text":"Henry","color":"#eb7060","bold":true},"> Hey! You shouldn't leave without paying."]
# set cooldown to some number of ticks
execute unless score @s safeway_lock matches 1.. run scoreboard players set @s safeway_lock 20
scoreboard players operation @s safeway_lock += @s playtime
