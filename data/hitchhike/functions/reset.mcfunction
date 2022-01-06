weather rain 1000000
time set 23000
# weather clear 1000000
# time set noon
gamerule doDaylightCycle false
gamerule playersSleepingPercentage 200
gamerule doLimitedCrafting true
# gamerule sendCommandFeedback false
stopsound @a
recipe take @a *

forceload remove all
# NPCS
function generated:npc/loadchunks
# spawn
forceload add -26 -11 -123 86
# most of map
# forceload add 1103 -256 745 -91
# forceload add 1103 -75 747 93
# wendys
# forceload add 790 94 813 120
# Spawn house
forceload add 1000 55 1025 71
# Fountain
forceload add 885 -49 900 -93
forceload add 913 -90 932 -70
# sawyer house
forceload add 930 -16 958 9
# Simons house
forceload add 961 162 891 215
# Hurm trees
forceload add 1166 273 1192 302
# hurm mine
forceload add 1236 317 1251 321
# hurm house
forceload add 1082 343 1068 359
# lake
forceload add 1196 361 763 483
# safeway
forceload add 884 -166 916 -152

# Maze
# forceload add -1504 -2 -1371 129
# lobby
forceload add -1378 -104 -1420 -196

# Waits for the chunks to actually load
schedule function hitchhike:truereset 20t