execute positioned ~ ~ ~ run function generated:story/maze/weapons/buildtool/detector/increment-0
data modify entity @e[tag=maze-buildtool-timer-init,limit=1] PlayerUUID set from entity @s UUID
execute at @e[tag=maze-buildtool-timer-init] if block ~ ~ ~ barrier run setblock ~ ~ ~ light_gray_wool
tag @e remove maze-buildtool-timer-init
