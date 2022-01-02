execute store result score _count stores run data get entity @s Item.Count
execute store result score _cost stores run data get entity @s Item.tag.cost
scoreboard players operation _count stores *= _cost stores
scoreboard players operation paymentcount stores += _count stores
