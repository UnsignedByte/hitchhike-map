tag @a remove car-rider
tag @a[nbt={RootVehicle:{Entity:{Tags:[car-root]}}}] add car-rider

scoreboard players set @e[tag=car-root] car-acc 0

execute as @e[tag=car-rider] at @s positioned ~ ~0.35 ~ as @e[tag=car-root,sort=nearest,limit=1] positioned ~ ~-0.35 ~ run function hitchhike:car/accel

# handle actual calculation of movement.
execute as @e[tag=car-root] at @s run function hitchhike:car/move

# Render the car
# execute as @e[tag=car-root] at @s run function hitchhike:car/render

scoreboard players operation surplus car = playercount vars
scoreboard players operation surplus car *= 2 const

execute if score surplus car >= maxcars car run scoreboard players operation maxcars car = surplus car
scoreboard players operation surplus car = maxcars car

execute as @e[tag=car-root] run scoreboard players remove surplus car 1
execute if score surplus car matches ..-1 run kill @e[tag=car-root,limit=1]