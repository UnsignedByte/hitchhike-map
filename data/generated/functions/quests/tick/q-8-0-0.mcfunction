scoreboard players operation oq-8-0-0 q-8 = q-8-0-0 q-8
scoreboard players set q-8-0-0 q-8 0
execute if score -sdcard story-simon matches 1 run scoreboard players add q-8-0-0 q-8 1
scoreboard players operation q-8-0-0 q-8 *= 100 const
scoreboard players operation q-8-0-0 q-8 *= 100 const
scoreboard players operation q-8-0-0 q-8 /= 100 const
execute unless score q-8-0-0 q-8 matches ..100 run scoreboard players set q-8-0-0 q-8 100
