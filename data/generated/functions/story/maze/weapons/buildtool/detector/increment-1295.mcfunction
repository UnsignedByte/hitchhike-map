execute positioned ~5 ~3 ~-5 if block ~ ~ ~ barrier run summon marker ~ ~ ~ {Tags:["maze-buildtool-timer","maze-buildtool-timer-init"]}
execute unless entity @e[tag=maze-buildtool-timer-init] positioned ~ ~ ~ run function generated:story/maze/weapons/buildtool/detector/increment-1296
