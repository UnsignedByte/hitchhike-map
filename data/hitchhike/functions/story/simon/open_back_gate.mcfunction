clone 926 56 197 928 57 198 926 64 197
playsound block.iron_door.open block @a 927.5 65 198.5 2 0.9

scoreboard players set -held story-simon 0
kill @e[tag=simon-holder]
tag @e[tag=npc-simon] remove npc-unface

tp @e[tag=npc-simon] 929.5 64 197.5 135 0