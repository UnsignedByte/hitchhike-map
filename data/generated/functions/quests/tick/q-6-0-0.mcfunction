scoreboard players operation oq-6-0-0 q-6 = q-6-0-0 q-6
scoreboard players set q-6-0-0 q-6 0
scoreboard players set @a q-6-0-0 0
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run scoreboard players add @s q-6-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:bread"}]}] run scoreboard players add @s q-6-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:apple"}]}] run scoreboard players add @s q-6-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:melon_slice"}]}] run scoreboard players add @s q-6-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:sweet_berries"}]}] run scoreboard players add @s q-6-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:glow_berries"}]}] run scoreboard players add @s q-6-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:cookie"}]}] run scoreboard players add @s q-6-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:dried_kelp"}]}] run scoreboard players add @s q-6-0-0 1
scoreboard players operation q-6-0-0 q-6 += @a q-6-0-0
scoreboard players operation q-6-0-0 q-6 *= 100 const
scoreboard players operation q-6-0-0 q-6 /= playercount vars
scoreboard players operation q-6-0-0 q-6 *= 100 const
scoreboard players operation q-6-0-0 q-6 /= 200 const
execute unless score q-6-0-0 q-6 matches ..100 run scoreboard players set q-6-0-0 q-6 100
