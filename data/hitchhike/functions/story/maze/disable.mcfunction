kill @e[tag=maze-weapon]
tag @a remove maze-mob
tag @e remove maze-pointer-marked
kill @e[tag=maze-boss]
execute as @e[tag=maze-mob] run function hitchhike:kill
scoreboard players set enabled maze 0
scoreboard players set @a foodGoal -1
effect clear @a regeneration
kill @e[tag=maze-weapon-displaystand,type=item]
gamerule doImmediateRespawn false