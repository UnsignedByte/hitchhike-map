bossbar set minecraft:maze name [{"text":"Finalizing Allocation"}]
bossbar set minecraft:maze color green
scoreboard players operation _removeleft maze = size maze
scoreboard players operation _removeleft maze *= 4 const
scoreboard players operation batchsize maze = size maze
execute store result bossbar minecraft:maze max run scoreboard players get _removeleft maze
bossbar set minecraft:maze players @a
bossbar set minecraft:maze visible true
bossbar set minecraft:maze style progress
bossbar set minecraft:maze value 0
scoreboard players set bossbar maze 0
#> Clean up maze generation and finalize maze
# Remove random walls from the maze to make it imperfect
function generated:story/maze/create/removerandomwalls
