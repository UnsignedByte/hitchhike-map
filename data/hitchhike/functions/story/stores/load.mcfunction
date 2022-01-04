# Message cooldown for store escapees
scoreboard objectives add store_lockT dummy
# all other stores things
scoreboard objectives add stores dummy
# For signs that run commands
scoreboard objectives add storetrigger trigger

data merge storage hitchhike:stores {welcome:{},success:{}}