#> Handle Movement

execute rotated ~ 0 positioned ^ ^ ^1 run function hitchhike:car/_storeoffset

execute store result score -X car run data get entity @s Pos[0] 1000
execute store result score -Z car run data get entity @s Pos[2] 1000

execute store result score -vX car run data get entity @s Motion[0] 1000
execute store result score -vZ car run data get entity @s Motion[2] 1000

scoreboard players operation -oX car -= -X car
scoreboard players operation -oZ car -= -Z car

scoreboard players operation -oX car *= @s car-acc
scoreboard players operation -oZ car *= @s car-acc

scoreboard players operation -vX car += -oX car
scoreboard players operation -vZ car += -oZ car

execute store result entity @s Motion[0] double 0.000001 run scoreboard players get -vX car
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get -vZ car