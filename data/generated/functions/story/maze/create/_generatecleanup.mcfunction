bossbar set minecraft:maze name [{"text":"Finalizing Data"}]
bossbar set minecraft:maze color red
scoreboard players operation bossbar maze = size maze
execute store result bossbar minecraft:maze max run scoreboard players get bossbar maze
bossbar set minecraft:maze players @a
bossbar set minecraft:maze visible true
bossbar set minecraft:maze style progress
bossbar set minecraft:maze value 0
scoreboard players set bossbar maze 0
#> Clean up maze generation and finalize maze
# Remove random walls from the maze to make it imperfect
scoreboard players operation _removeleft maze = size maze
scoreboard players operation _removeleft maze *= 8 const
scoreboard players operation batchsize maze = size maze
function generated:story/maze/create/removerandomwalls
