scoreboard objectives remove checkpoint-id
scoreboard objectives add checkpoint-id dummy
kill @e[tag=checkpoint-marker]
function generated:story/parkour/summoncheckpoints