gamerule maxCommandChainLength 1000000
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule doMobLoot false
gamerule doTileDrops false
gamerule randomTickSpeed 0
gamerule doWeatherCycle false
gamerule announceAdvancements false

# Forceload 0 0 chunks bc useful
forceload add -1 -1 1 1

#> SAFEWAY STUFF
function hitchhike:safeway/load

#> STORY STUFF
function hitchhike:story/load

# car stuff
function hitchhike:car/load

function hitchhike:thrownitem/load
function hitchhike:hitdetect/load

#food
function hitchhike:food/load

# global clock
scoreboard objectives add playtime minecraft.custom:minecraft.play_time

scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy