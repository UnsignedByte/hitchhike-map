scoreboard players operation -curr car-id = @s car-id

execute positioned ^0.3 ^ ^0.5 as @e[nbt={Tags:[car-render,baser1]}] if score @s car-id = -curr car-id run tp @s ~ ~-10 ~ ~ ~
execute positioned ^0.3 ^ ^ as @e[nbt={Tags:[car-render,baser2]}] if score @s car-id = -curr car-id run tp @s ~ ~-10 ~ ~ ~
execute positioned ^0.3 ^ ^-0.5 as @e[nbt={Tags:[car-render,baser3]}] if score @s car-id = -curr car-id run tp @s ~ ~-10 ~ ~ ~
execute positioned ^-0.3 ^ ^0.5 as @e[nbt={Tags:[car-render,basel1]}] if score @s car-id = -curr car-id run tp @s ~ ~-10 ~ ~ ~
execute positioned ^-0.3 ^ ^ as @e[nbt={Tags:[car-render,basel2]}] if score @s car-id = -curr car-id run tp @s ~ ~-10 ~ ~ ~
execute positioned ^-0.3 ^ ^-0.5 as @e[nbt={Tags:[car-render,basel3]}] if score @s car-id = -curr car-id run tp @s ~ ~-10 ~ ~ ~