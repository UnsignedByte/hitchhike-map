kill @e[tag=maze-weapon]
tag @a remove maze-mob
execute as @e[tag=maze-mob] run function hitchhike:kill
scoreboard players set enabled maze 0
effect clear @a saturation