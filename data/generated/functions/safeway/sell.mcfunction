execute as @e[tag=paying,nbt={Item:{id: "minecraft:apple", tag: {cost: 200, display: {Lore: ['{"text":"Unsold (2.00B)","italic":true,"color":"dark_gray"}']}, sold: 0b}}} run data merge entity @s {Item:{id: "minecraft:apple", tag: {cost: 200, sold: 1b}}}
execute as @e[tag=paying,nbt={Item:{id: "minecraft:melon_slice", tag: {cost: 200, display: {Lore: ['{"text":"Unsold (2.00B)","italic":true,"color":"dark_gray"}']}, sold: 0b}}} run data merge entity @s {Item:{id: "minecraft:melon_slice", tag: {cost: 200, sold: 1b}}}
execute as @e[tag=paying,nbt={Item:{id: "minecraft:glow_berries", tag: {cost: 200, display: {Lore: ['{"text":"Unsold (2.00B)","italic":true,"color":"dark_gray"}']}, sold: 0b}}} run data merge entity @s {Item:{id: "minecraft:glow_berries", tag: {cost: 200, sold: 1b}}}
