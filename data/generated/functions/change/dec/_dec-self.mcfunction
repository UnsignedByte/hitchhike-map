execute store result score @s change run data get entity @s Item.Count
scoreboard players remove @s change 1
execute store result entity @s Item.Count byte 1 run scoreboard players get @s change
scoreboard players reset @s change
