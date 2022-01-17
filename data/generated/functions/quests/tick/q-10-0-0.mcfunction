scoreboard players operation oq-10-0-0 q-10 = q-10-0-0 q-10
scoreboard players set q-10-0-0 q-10 0
execute if score -sdcard story-simon matches 1 run scoreboard players add q-10-0-0 q-10 1
scoreboard players operation q-10-0-0 q-10 *= 100 const
scoreboard players operation q-10-0-0 q-10 *= 100 const
scoreboard players operation q-10-0-0 q-10 /= 100 const
execute unless score q-10-0-0 q-10 matches ..100 run scoreboard players set q-10-0-0 q-10 100
