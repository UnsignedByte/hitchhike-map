scoreboard players operation oq-4-0-0 q-4 = q-4-0-0 q-4
scoreboard players set q-4-0-0 q-4 0
execute if score diet quest-status matches -1 run scoreboard players add q-4-0-0 q-4 1
execute if score leather quest-status matches -1 run scoreboard players add q-4-0-0 q-4 1
execute if score picnic quest-status matches -1 run scoreboard players add q-4-0-0 q-4 1
scoreboard players operation q-4-0-0 q-4 *= 100 const
scoreboard players operation q-4-0-0 q-4 *= 100 const
scoreboard players operation q-4-0-0 q-4 /= 300 const
execute unless score q-4-0-0 q-4 matches ..100 run scoreboard players set q-4-0-0 q-4 100
