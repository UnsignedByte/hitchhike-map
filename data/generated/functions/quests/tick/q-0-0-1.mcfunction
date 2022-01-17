scoreboard players operation oq-0-0-1 q-0 = q-0-0-1 q-0
scoreboard players set q-0-0-1 q-0 0
execute if score mountain dialogue-status matches -1.. run scoreboard players add q-0-0-1 q-0 1
execute if score visitfriend-start story-sawyer matches 1 run scoreboard players add q-0-0-1 q-0 1
scoreboard players operation q-0-0-1 q-0 *= 100 const
scoreboard players operation q-0-0-1 q-0 *= 100 const
scoreboard players operation q-0-0-1 q-0 /= 200 const
execute unless score q-0-0-1 q-0 matches ..100 run scoreboard players set q-0-0-1 q-0 100
