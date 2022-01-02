execute as @s[x=880,dx=-1000000] at @s run tp @s 882.3000 ~ ~
execute as @s[x=-168,dx=1000000] at @s run tp @s -169.3000 ~ ~
execute as @s[z=916,dz=-1000000] at @s run tp @s ~ ~ 918.3000
execute as @s[z=-150,dz=1000000] at @s run tp @s ~ ~ -151.3000
scoreboard players operation @s store_lockT -= @s playtime
execute unless score @s store_lockT matches 1.. run tellraw @s ["<",{"text":"Paoule Enrique","color":"#eb7060","bold":true},"> Hey! You shouldn't leave without paying."]
# set cooldown to some number of ticks
execute unless score @s store_lockT matches 1.. run scoreboard players set @s store_lockT 20
scoreboard players operation @s store_lockT += @s playtime
