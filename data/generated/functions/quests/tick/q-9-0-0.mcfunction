scoreboard players operation oq-9-0-0 q-9 = q-9-0-0 q-9
scoreboard players set q-9-0-0 q-9 0
execute if entity @a[nbt={Inventory:[{id: "minecraft:stone_button", tag: {display: {Name: '{"text":"Logitech® M585 Multi-Device Wireless Mouse with Flow Tech","color":"light_gray"}', Lore: ['{"text":"Compact mouse with extra controls","color":"gray"}']}}}]}] run scoreboard players add q-9-0-0 q-9 1
scoreboard players operation q-9-0-0 q-9 *= 100 const
scoreboard players operation q-9-0-0 q-9 *= 100 const
scoreboard players operation q-9-0-0 q-9 /= 100 const
execute unless score q-9-0-0 q-9 matches ..100 run scoreboard players set q-9-0-0 q-9 100
