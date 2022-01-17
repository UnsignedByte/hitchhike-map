scoreboard players operation oq-6-0-0 q-6 = q-6-0-0 q-6
scoreboard players set q-6-0-0 q-6 0
scoreboard players set @a q-6-0-0 0
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b, id:"minecraft:leather_boots"}]}] run scoreboard players add @s q-6-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:101b, id:"minecraft:leather_leggings"}]}] run scoreboard players add @s q-6-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:102b, id:"minecraft:leather_chestplate"}]}] run scoreboard players add @s q-6-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet"}]}] run scoreboard players add @s q-6-0-0 1
scoreboard players operation q-6-0-0 q-6 += @a q-6-0-0
scoreboard players operation q-6-0-0 q-6 *= 100 const
scoreboard players operation q-6-0-0 q-6 /= playercount vars
scoreboard players operation q-6-0-0 q-6 *= 100 const
scoreboard players operation q-6-0-0 q-6 /= 300 const
execute unless score q-6-0-0 q-6 matches ..100 run scoreboard players set q-6-0-0 q-6 100
