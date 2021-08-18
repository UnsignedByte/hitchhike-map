execute store result score @s count-change-tmp run data get entity @s Item.Count
scoreboard players operation @s count-change-tmp *= val count-change-tmp
scoreboard players operation changecount vars += @s count-change-tmp
