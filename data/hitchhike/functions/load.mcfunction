weather clear 1000000
time set noon
gamerule doDaylightCycle false
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doMobLoot false
gamerule randomTickSpeed 0
gamerule doWeatherCycle false

# Forceload 0 0 chunks bc useful
forceload add -1 -1 1 1

#> SAFEWAY STUFF
function hitchhike:safeway/load

#> STORY STUFF
function hitchhike:story/load

# car stuff
function hitchhike:car/load

# global clock
scoreboard objectives add playtime minecraft.custom:minecraft.play_time
