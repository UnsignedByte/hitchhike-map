execute as @s[x=1043,dx=-1000000] at @s run tp @s 1045.3000 ~ ~
execute as @s[x=1061,dx=1000000] at @s run tp @s 1059.7000 ~ ~
execute as @s[z=-162,dz=-1000000] at @s run tp @s ~ ~ -159.7000
execute as @s[z=-140,dz=1000000] at @s run tp @s ~ ~ -141.3000
scoreboard players operation @s store_lockT -= @s playtime
execute unless score @s store_lockT matches 1.. run tellraw @s ["<",{"text":"Bethany Norma","color":"#00704A","bold":true},"> Hey, leaving without a drink?"]
# set cooldown to some number of ticks
execute unless score @s store_lockT matches 1.. run scoreboard players set @s store_lockT 20
scoreboard players operation @s store_lockT += @s playtime
