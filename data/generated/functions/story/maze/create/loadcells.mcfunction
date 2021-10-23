execute as @e[tag=maze-node] at @s run function generated:story/maze/create/_updateconnections
# Set up bossbar
bossbar set minecraft:maze name [{"text":"Loading SD Card"}]
bossbar set minecraft:maze color blue
scoreboard players operation bossbar maze = size maze
execute store result bossbar minecraft:maze max run scoreboard players get bossbar maze
bossbar set minecraft:maze players @a
bossbar set minecraft:maze visible true
bossbar set minecraft:maze style progress
bossbar set minecraft:maze value 0
scoreboard players set bossbar maze 0
scoreboard players operation batchsize maze = size maze
scoreboard players operation batchsize maze *= size maze

function generated:story/maze/create/_loadcellbatch
