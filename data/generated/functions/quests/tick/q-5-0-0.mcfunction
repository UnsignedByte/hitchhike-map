scoreboard players operation oq-5-0-0 q-5 = q-5-0-0 q-5
scoreboard players set q-5-0-0 q-5 0
scoreboard players set @a q-5-0-0 0
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b, id:"minecraft:leather_boots"}]}] unless entity @s[nbt={Inventory:[{Slot:100b, tag:{sold:0b}}]}] run scoreboard players add @s q-5-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:101b, id:"minecraft:leather_leggings"}]}] unless entity @s[nbt={Inventory:[{Slot:101b, tag:{sold:0b}}]}] run scoreboard players add @s q-5-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:102b, id:"minecraft:leather_chestplate"}]}] unless entity @s[nbt={Inventory:[{Slot:102b, tag:{sold:0b}}]}] run scoreboard players add @s q-5-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet"}]}] unless entity @s[nbt={Inventory:[{Slot:103b, tag:{sold:0b}}]}] run scoreboard players add @s q-5-0-0 1
scoreboard players operation q-5-0-0 q-5 += @a q-5-0-0
scoreboard players operation q-5-0-0 q-5 *= 100 const
scoreboard players operation q-5-0-0 q-5 /= playercount vars
scoreboard players operation q-5-0-0 q-5 *= 100 const
scoreboard players operation q-5-0-0 q-5 /= 300 const
execute unless score q-5-0-0 q-5 matches ..100 run scoreboard players set q-5-0-0 q-5 100
