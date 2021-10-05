scoreboard players operation oq-4-0-0 q-4 = q-4-0-0 q-4
scoreboard players set q-4-0-0 q-4 0
scoreboard players set @a q-4-0-0 0
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b, id:"minecraft:leather_boots"}]}] run scoreboard players add @s q-4-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:101b, id:"minecraft:leather_leggings"}]}] run scoreboard players add @s q-4-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:102b, id:"minecraft:leather_chestplate"}]}] run scoreboard players add @s q-4-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet"}]}] run scoreboard players add @s q-4-0-0 1
scoreboard players operation q-4-0-0 q-4 += @a q-4-0-0
scoreboard players operation q-4-0-0 q-4 *= 100 const
scoreboard players operation q-4-0-0 q-4 /= playercount vars
scoreboard players operation q-4-0-0 q-4 *= 100 const
scoreboard players operation q-4-0-0 q-4 /= 100 const
scoreboard players operation q-4-0-0 q-4 /= 3 const
execute unless score q-4-0-0 q-4 matches ..100 run scoreboard players set q-4-0-0 q-4 100
