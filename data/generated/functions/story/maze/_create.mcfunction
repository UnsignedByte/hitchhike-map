# Reset maze
kill @e[tag=maze-marker]
function hitchhike:story/maze/reset
# Set Size of maze
scoreboard players set cellsize maze 9
scoreboard players set size maze 15
# Set up bossbar
bossbar set minecraft:maze name [{"text":"Clearing Memory"}]
bossbar set minecraft:maze color red
execute store result bossbar minecraft:maze max run scoreboard players get size maze
bossbar set minecraft:maze players @a
bossbar set minecraft:maze visible true
bossbar set minecraft:maze style progress
bossbar set minecraft:maze value 0
scoreboard players set bossbar maze 0
summon marker -1500 13 0 {Tags:["maze-marker","maze-create-root"]}
forceload add -1504 -2 -1371 129
function generated:story/maze/loadchunks

scoreboard players operation _x maze = size maze
schedule function generated:story/maze/create/_x 20t
