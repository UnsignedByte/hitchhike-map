tp @s ~ ~ -151.325
scoreboard players operation @s safeway_lock -= @s playtime
execute unless score @s safeway_lock matches 1.. run tellraw @s [{"text":"<"},{"color":"red","text":"Henry"},{"text":"> Hey! You shouldn't leave without paying."}]
execute unless score @s safeway_lock matches 1.. run scoreboard players operation @s safeway_lock = 60
scoreboard players operation @s safeway_lock += @s playtime
