#> Handle acceleration of cars with entities in them

data modify entity @s Rotation[0] set from entity @e[tag=car-rider,sort=nearest,limit=1] Rotation[0]

# store rotation score *1000, gives a value between -90,000 and 90,000
execute store result score @s car-acc run data get entity @e[tag=car-rider,sort=nearest,limit=1] Rotation[1] 1000

scoreboard players operation @s car-acc -= 45000 const

# we want only between 0 and 30k (beyond that is max acceleration/reverse)
execute if score @s car-acc matches 1.. run scoreboard players set @s car-acc 0
execute if score @s car-acc matches ..-75001 run scoreboard players set @s car-acc -75000

# normalize to between 0 and 1000
scoreboard players operation @s car-acc /= -75 const