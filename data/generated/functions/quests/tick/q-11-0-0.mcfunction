scoreboard players operation oq-11-0-0 q-11 = q-11-0-0 q-11
scoreboard players set q-11-0-0 q-11 0
execute if score -tree0 hurm-chopped matches 1 run scoreboard players add q-11-0-0 q-11 1
execute if score -tree0 hurm-chopped matches 1 run scoreboard players add q-11-0-0 q-11 1
execute if score -tree0 hurm-chopped matches 1 run scoreboard players add q-11-0-0 q-11 1
scoreboard players operation q-11-0-0 q-11 *= 100 const
scoreboard players operation q-11-0-0 q-11 *= 100 const
scoreboard players operation q-11-0-0 q-11 /= 300 const
execute unless score q-11-0-0 q-11 matches ..100 run scoreboard players set q-11-0-0 q-11 100
