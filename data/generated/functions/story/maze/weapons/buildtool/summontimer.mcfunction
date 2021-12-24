execute positioned ~ ~ ~ run function generated:story/maze/weapons/buildtool/detector/increment-0
tag @a remove match-uuid-select
tag @s add match-uuid-select
execute as @e[tag=maze-buildtool-timer-init] run data modify entity @s PlayerUUID set from entity @a[tag=match-uuid-select,limit=1] UUID
execute at @e[tag=maze-buildtool-timer-init] if block ~ ~ ~ barrier run setblock ~ ~ ~ light_gray_wool
tag @e remove maze-buildtool-timer-init
