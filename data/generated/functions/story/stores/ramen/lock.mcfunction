execute as @s[x=1028,dx=-1000000] at @s run tp @s 1030.3000 ~ ~
execute as @s[x=1044,dx=1000000] at @s run tp @s 1042.7000 ~ ~
execute as @s[z=-162,dz=-1000000] at @s run tp @s ~ ~ -159.7000
execute as @s[z=-140,dz=1000000] at @s run tp @s ~ ~ -141.3000
scoreboard players operation @s store_lockT -= @s playtime
execute unless score @s store_lockT matches 1.. run tellraw @s ["<",{"text":"Otori","color":"#8723a6","bold":true},"> Don't you want anything?"]
# set cooldown to some number of ticks
execute unless score @s store_lockT matches 1.. run scoreboard players set @s store_lockT 20
scoreboard players operation @s store_lockT += @s playtime
