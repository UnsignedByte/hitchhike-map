scoreboard objectives remove maze-placed
scoreboard objectives add maze-placed minecraft.used:minecraft.barrier

kill @e[tag=maze-weapon]
kill @e[tag=maze-marker]
tag @a remove maze-mob
tag @e remove maze-pointer-marked
kill @e[tag=maze-boss]
execute as @e[tag=maze-mob] run function hitchhike:kill
scoreboard players set @a foodGoal -1
effect clear @a regeneration
kill @e[tag=maze-weapon-displaystand,type=item]
# gamerule doImmediateRespawn false

team modify player collisionRule always
team modify player friendlyFire true

clear @a leather_boots{clownshoes:1b}

function generated:story/maze/unloadchunks
forceload remove -1504 -2 -1371 129

scoreboard players set enabled maze 0