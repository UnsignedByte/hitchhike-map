scoreboard players operation oq-9-0-0 q-9 = q-9-0-0 q-9
scoreboard players set q-9-0-0 q-9 0
execute if score -sdcard story-simon matches 1 run scoreboard players add q-9-0-0 q-9 1
scoreboard players operation q-9-0-0 q-9 *= 100 const
scoreboard players operation q-9-0-0 q-9 *= 100 const
scoreboard players operation q-9-0-0 q-9 /= 100 const
execute unless score q-9-0-0 q-9 matches ..100 run scoreboard players set q-9-0-0 q-9 100
