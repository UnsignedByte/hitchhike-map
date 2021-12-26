scoreboard players operation oq-5-0-0 q-5 = q-5-0-0 q-5
scoreboard players set q-5-0-0 q-5 0
scoreboard players set @a q-5-0-0 0
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run scoreboard players add @s q-5-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:bread"}]}] run scoreboard players add @s q-5-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:apple"}]}] run scoreboard players add @s q-5-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:melon_slice"}]}] run scoreboard players add @s q-5-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:sweet_berries"}]}] run scoreboard players add @s q-5-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:glow_berries"}]}] run scoreboard players add @s q-5-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:cookie"}]}] run scoreboard players add @s q-5-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:dried_kelp"}]}] run scoreboard players add @s q-5-0-0 1
scoreboard players operation q-5-0-0 q-5 += @a q-5-0-0
scoreboard players operation q-5-0-0 q-5 *= 100 const
scoreboard players operation q-5-0-0 q-5 /= playercount vars
scoreboard players operation q-5-0-0 q-5 *= 100 const
scoreboard players operation q-5-0-0 q-5 /= 200 const
execute unless score q-5-0-0 q-5 matches ..100 run scoreboard players set q-5-0-0 q-5 100
