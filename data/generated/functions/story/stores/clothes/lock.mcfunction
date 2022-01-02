execute as @s[x=972,dx=-1000000] at @s run tp @s 974.3000 ~ ~
execute as @s[x=993,dx=1000000] at @s run tp @s 991.7000 ~ ~
execute as @s[z=-173,dz=-1000000] at @s run tp @s ~ ~ -170.7000
execute as @s[z=-152,dz=1000000] at @s run tp @s ~ ~ -153.3000
scoreboard players operation @s store_lockT -= @s playtime
execute unless score @s store_lockT matches 1.. run tellraw @s ["<",{"text":"Jean Skinne","color":"#2387d9","bold":true},"> You can't leaving without paying."]
# set cooldown to some number of ticks
execute unless score @s store_lockT matches 1.. run scoreboard players set @s store_lockT 20
scoreboard players operation @s store_lockT += @s playtime
