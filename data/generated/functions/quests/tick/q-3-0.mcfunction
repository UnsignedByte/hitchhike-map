scoreboard players operation oq-3-0 q-3 = q-3-0 q-3
scoreboard players set q-3-0 q-3 0
execute if score hurm-done vars matches 1 run scoreboard players add q-3-0 q-3 1
execute if score preparedness quest-status matches -1 run scoreboard players add q-3-0 q-3 1
scoreboard players operation q-3-0 q-3 *= 100 const
scoreboard players operation q-3-0 q-3 *= 100 const
scoreboard players operation q-3-0 q-3 /= 200 const
execute unless score q-3-0 q-3 matches ..100 run scoreboard players set q-3-0 q-3 100
