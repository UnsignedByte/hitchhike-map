scoreboard players operation oq-2-0-0 q-2 = q-2-0-0 q-2
scoreboard players set q-2-0-0 q-2 0
scoreboard players set @a q-2-0-0 0
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b, id:"minecraft:leather_boots"}]}] run scoreboard players add @s q-2-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:101b, id:"minecraft:leather_leggings"}]}] run scoreboard players add @s q-2-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:102b, id:"minecraft:leather_chestplate"}]}] run scoreboard players add @s q-2-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:103b, id:"minecraft:leather_helmet"}]}] run scoreboard players add @s q-2-0-0 1
scoreboard players operation q-2-0-0 q-2 += @a q-2-0-0
scoreboard players operation q-2-0-0 q-2 *= 100 const
scoreboard players operation q-2-0-0 q-2 /= playercount vars
scoreboard players operation q-2-0-0 q-2 /= 3 const
 execute unless score q-2-0-0 q-2 matches ..100 run scoreboard players set q-2-0-0 q-2 100
