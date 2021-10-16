# Reset maze
execute as @e[tag=maze-node] at @s run forceload remove ~-4 ~-4 ~4 ~4
kill @e[tag=maze-marker]
# Set Size of maze
scoreboard players set size maze 15
# Set up bossbar
bossbar set minecraft:maze name [{"text":"Clearing Memory"}]
bossbar set minecraft:maze color blue
execute store result bossbar minecraft:maze max run scoreboard players get size maze
bossbar set minecraft:maze players @a
bossbar set minecraft:maze visible true
bossbar set minecraft:maze style progress
bossbar set minecraft:maze value 0
scoreboard players set bossbar maze 0
summon marker -1500 4 0 {Tags:["maze-marker","maze-create-root"]}

scoreboard players operation _x maze = size maze
function generated:story/maze/create/_x
