execute store result score _count safeway run data get entity @s Item.Count
execute store result score _cost safeway run data get entity @s Item.tag.cost
scoreboard players operation _count safeway *= _cost safeway
scoreboard players operation paymentcount safeway += _count safeway
