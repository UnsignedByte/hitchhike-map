#> Handle Movement

execute rotated ~ 0 positioned ^ ^ ^1 run function hitchhike:car/_storeoffset

execute store result score -X car run data get entity @s Pos[0] 1000
execute store result score -Z car run data get entity @s Pos[2] 1000

scoreboard players operation -oX car -= -X car
scoreboard players operation -oZ car -= -Z car

scoreboard players operation -oX car *= @s car-acc
scoreboard players operation -oZ car *= @s car-acc

scoreboard players operation -oX car /= 100 const
scoreboard players operation -oZ car /= 100 const

scoreboard players operation -oX car *= speed car
scoreboard players operation -oZ car *= speed car

# Friction
scoreboard players operation @s car-velX *= 90 const
scoreboard players operation @s car-velZ *= 90 const

scoreboard players operation @s car-velX /= 100 const
scoreboard players operation @s car-velZ /= 100 const

# add acceleration

scoreboard players operation @s car-velX += -oX car
scoreboard players operation @s car-velZ += -oZ car

scoreboard players operation -X car *= 1000 const
scoreboard players operation -Z car *= 1000 const

scoreboard players operation -X car += @s car-velX
scoreboard players operation -Z car += @s car-velZ

execute store result entity @s Pos[0] double 0.000001 run scoreboard players get -X car
execute store result entity @s Pos[2] double 0.000001 run scoreboard players get -Z car