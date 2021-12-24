execute store result score #success maze-placed unless entity @e[tag=maze-buildtool-timer-init] positioned ~-2 ~2 ~4 if block ~ ~ ~ barrier run summon marker ~ ~ ~ {Tags:["maze-buildtool-timer","maze-buildtool-timer-init"]}
execute if score #success maze-placed matches 0 positioned ~ ~ ~ run function generated:story/maze/weapons/buildtool/detector/increment-471
