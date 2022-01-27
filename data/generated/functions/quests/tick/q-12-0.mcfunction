scoreboard players operation oq-12-0 q-12 = q-12-0 q-12
scoreboard players set q-12-0 q-12 0
execute if entity @a[nbt={Inventory:[{tag:{boxkey:1b}}]}] run scoreboard players add q-12-0 q-12 1
execute if score #tower-climbed vars matches 1 run scoreboard players add q-12-0 q-12 1
execute if score loadid tower-puzzle-id matches 0.. run scoreboard players add q-12-0 q-12 1
execute if score #electrical-done vars matches 1 run scoreboard players add q-12-0 q-12 1
scoreboard players operation q-12-0 q-12 *= 100 const
scoreboard players operation q-12-0 q-12 *= 100 const
scoreboard players operation q-12-0 q-12 /= 400 const
execute unless score q-12-0 q-12 matches ..100 run scoreboard players set q-12-0 q-12 100
