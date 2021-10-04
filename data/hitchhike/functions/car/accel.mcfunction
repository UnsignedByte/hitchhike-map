#> Handle acceleration of cars with entities in them

data modify entity @s Rotation[0] set from entity @e[tag=car-rider,sort=nearest,limit=1] Rotation[0]

# store rotation score *1000, gives a value between -90,000 and 90,000
execute store result score @s car-acc run data get entity @e[tag=car-rider,sort=nearest,limit=1] Rotation[1] 1000

# we want only between +- 15,000 (beyond that is max acceleration/reverse)
execute if score @s car-acc matches 15001.. run scoreboard players set @s car-acc 15000
execute if score @s car-acc matches ..-15001 run scoreboard players set @s car-acc -15000

# normalize to between -1000 and 1000
scoreboard players operation @s car-acc /= -15000 const