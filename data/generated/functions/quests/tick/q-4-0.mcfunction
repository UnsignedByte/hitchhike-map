scoreboard players operation oq-4-0 q-4 = q-4-0 q-4
scoreboard players set q-4-0 q-4 0
scoreboard players set @a q-4-0 0
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run scoreboard players add @s q-4-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:bread"}]}] run scoreboard players add @s q-4-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:apple"}]}] run scoreboard players add @s q-4-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:melon_slice"}]}] run scoreboard players add @s q-4-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:sweet_berries"}]}] run scoreboard players add @s q-4-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:glow_berries"}]}] run scoreboard players add @s q-4-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:cookie"}]}] run scoreboard players add @s q-4-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:dried_kelp"}]}] run scoreboard players add @s q-4-0 1
scoreboard players operation q-4-0 q-4 += @a q-4-0
scoreboard players operation q-4-0 q-4 *= 100 const
scoreboard players operation q-4-0 q-4 /= 5 const
execute unless score q-4-0 q-4 matches ..100 run scoreboard players set q-4-0 q-4 100
