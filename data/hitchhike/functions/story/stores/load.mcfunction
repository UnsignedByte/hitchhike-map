# Message cooldown for store escapees
scoreboard objectives add store_lockT dummy
# all other stores things
scoreboard objectives add stores dummy
# For signs that run commands
scoreboard objectives add storetrigger trigger

data modify storage hitchhike:stores success set value {}
data modify storage hitchhike:stores welcome set value {}