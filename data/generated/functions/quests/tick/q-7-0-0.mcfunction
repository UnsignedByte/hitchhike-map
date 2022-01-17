scoreboard players operation oq-7-0-0 q-7 = q-7-0-0 q-7
scoreboard players set q-7-0-0 q-7 0
scoreboard players set @a q-7-0-0 0
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:milk_bucket"}]}] run scoreboard players add @s q-7-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:bread"}]}] run scoreboard players add @s q-7-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:apple"}]}] run scoreboard players add @s q-7-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:melon_slice"}]}] run scoreboard players add @s q-7-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:sweet_berries"}]}] run scoreboard players add @s q-7-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:glow_berries"}]}] run scoreboard players add @s q-7-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:cookie"}]}] run scoreboard players add @s q-7-0-0 1
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:dried_kelp"}]}] run scoreboard players add @s q-7-0-0 1
scoreboard players operation q-7-0-0 q-7 += @a q-7-0-0
scoreboard players operation q-7-0-0 q-7 *= 100 const
scoreboard players operation q-7-0-0 q-7 /= playercount vars
scoreboard players operation q-7-0-0 q-7 *= 100 const
scoreboard players operation q-7-0-0 q-7 /= 200 const
execute unless score q-7-0-0 q-7 matches ..100 run scoreboard players set q-7-0-0 q-7 100
