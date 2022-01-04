execute as @s[x=992,dx=-1000000] at @s run tp @s 994.3000 ~ ~
execute as @s[x=1008,dx=1000000] at @s run tp @s 1006.7000 ~ ~
execute as @s[z=-174,dz=-1000000] at @s run tp @s ~ ~ -171.7000
execute as @s[z=-152,dz=1000000] at @s run tp @s ~ ~ -153.3000
scoreboard players operation @s store_lockT -= @s playtime
execute unless score @s store_lockT matches 1.. run tellraw @s ["<",{"text":"Sili Connesse","color":"#f0d792","bold":true},"> Hey, aren't you going to finish your order?"]
# set cooldown to some number of ticks
execute unless score @s store_lockT matches 1.. run scoreboard players set @s store_lockT 20
scoreboard players operation @s store_lockT += @s playtime
