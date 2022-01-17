execute as @s[x=880,dx=-1000000] at @s run tp @s 882.3000 ~ ~
execute as @s[x=918,dx=1000000] at @s run tp @s 916.7000 ~ ~
execute as @s[z=-170,dz=-1000000] at @s run tp @s ~ ~ -167.7000
execute as @s[z=-150,dz=1000000] at @s run tp @s ~ ~ -151.3000
scoreboard players operation @s store_lockT -= @s playtime
execute unless score @s store_lockT matches 1.. run tellraw @s ["<",{"text":"Harold Pell","color":"#eb7060","bold":true},"> Hey! I think you forgot to pay for your items!"]
# set cooldown to some number of ticks
execute unless score @s store_lockT matches 1.. run scoreboard players set @s store_lockT 20
scoreboard players operation @s store_lockT += @s playtime
