tag @e remove car-rider
tag @e[nbt={RootVehicle:{Entity:{Tags:[car-root]}}}] add car-rider

scoreboard players set @e[tag=car-root] car-acc 0

execute as @e[tag=car-rider] at @s positioned ~ ~0.35 ~ as @e[tag=car-root,sort=nearest,limit=1] positioned ~ ~-0.35 ~ run function hitchhike:car/accel

# handle actual calculation of movement.
execute as @e[tag=car-root] at @s run function hitchhike:car/move

# Render the car
execute as @e[tag=car-root] at @s run function hitchhike:car/render