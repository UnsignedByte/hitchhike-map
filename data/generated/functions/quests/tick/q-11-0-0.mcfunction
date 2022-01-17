scoreboard players operation oq-11-0-0 q-11 = q-11-0-0 q-11
scoreboard players set q-11-0-0 q-11 0
execute if score -cooked hurm-fish matches 1.. run scoreboard players add q-11-0-0 q-11 1
execute if score -cooked hurm-fish matches 2.. run scoreboard players add q-11-0-0 q-11 1
execute if score -cooked hurm-fish matches 3.. run scoreboard players add q-11-0-0 q-11 1
execute if score -cooked hurm-fish matches 4.. run scoreboard players add q-11-0-0 q-11 1
scoreboard players operation q-11-0-0 q-11 *= 100 const
scoreboard players operation q-11-0-0 q-11 *= 100 const
scoreboard players operation q-11-0-0 q-11 /= 400 const
execute unless score q-11-0-0 q-11 matches ..100 run scoreboard players set q-11-0-0 q-11 100
