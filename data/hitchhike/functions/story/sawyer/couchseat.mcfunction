scoreboard players set -held story-sawyer 0
kill @e[tag=sawyer-holder]
tag @e[tag=npc-sawyer] remove npc-unface
setblock 952 35 -1 air

tp @e[tag=npc-sawyer] 955.5 65 0.3 -180 30

scoreboard players set @e[tag=npc-sawyer] dialogue-status 4