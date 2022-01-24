scoreboard players operation oq-1-0 q-1 = q-1-0 q-1
scoreboard players set q-1-0 q-1 0
execute if score #hurm-done vars matches 1 run scoreboard players add q-1-0 q-1 1
execute if score #parkour-started vars matches 1 run scoreboard players add q-1-0 q-1 1
execute if score preparedness quest-status matches -1 run scoreboard players add q-1-0 q-1 1
scoreboard players operation q-1-0 q-1 *= 100 const
scoreboard players operation q-1-0 q-1 *= 100 const
scoreboard players operation q-1-0 q-1 /= 300 const
execute unless score q-1-0 q-1 matches ..100 run scoreboard players set q-1-0 q-1 100
