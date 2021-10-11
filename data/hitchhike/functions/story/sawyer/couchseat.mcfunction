scoreboard players set -held story-sawyer 0
kill @e[tag=sawyer-holder]
tag @e[tag=npc-sawyer] remove npc-unface
setblock 955 35 1 air

tp @e[tag=npc-sawyer] 957.25 65 0.5 90 20

scoreboard players set @e[tag=npc-sawyer] dialogue-status 4