execute store result score @s change-count-tmp run data get entity @s Item.Count
scoreboard players operation @s change-count-tmp *= val change-count-tmp
scoreboard players operation count change += @s change-count-tmp
