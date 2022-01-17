scoreboard players operation oq-3-0-0 q-3 = q-3-0-0 q-3
scoreboard players set q-3-0-0 q-3 0
execute if score diet quest-status matches -1 run scoreboard players add q-3-0-0 q-3 1
execute if score leather quest-status matches -1 run scoreboard players add q-3-0-0 q-3 1
execute if score picnic quest-status matches -1 run scoreboard players add q-3-0-0 q-3 1
scoreboard players operation q-3-0-0 q-3 *= 100 const
scoreboard players operation q-3-0-0 q-3 *= 100 const
scoreboard players operation q-3-0-0 q-3 /= 300 const
execute unless score q-3-0-0 q-3 matches ..100 run scoreboard players set q-3-0-0 q-3 100
