scoreboard players operation oq-2-0-1 q-2 = q-2-0-1 q-2
scoreboard players set q-2-0-1 q-2 0
execute if score mountain dialogue-status matches -1.. run scoreboard players add q-2-0-1 q-2 1
execute if score visitfriend-start story-sawyer matches 1 run scoreboard players add q-2-0-1 q-2 1
scoreboard players operation q-2-0-1 q-2 *= 100 const
scoreboard players operation q-2-0-1 q-2 *= 100 const
scoreboard players operation q-2-0-1 q-2 /= 200 const
execute unless score q-2-0-1 q-2 matches ..100 run scoreboard players set q-2-0-1 q-2 100
