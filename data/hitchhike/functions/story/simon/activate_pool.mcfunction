scoreboard players set -held story-simon 0
scoreboard players set -lacroix story-simon 1
kill @e[tag=simon-holder]
tag @e[tag=npc-simon] remove npc-unface
setblock 943 39 185 air

tp @e[tag=npc-simon] 942.5 69 183.5 135 -10

scoreboard players set @e[tag=npc-simon] dialogue-status 4