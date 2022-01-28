scoreboard players operation #tmp phone-detect-id = @s phone-detect-id
execute as @a if score @s phone-detect-id = #tmp phone-detect-id run tag @s add phone-detect-selected
execute if entity @s[nbt={HandItems:{tag:{ownphone:1b}}}] run give @a[tag=phone-detect-selected] minecraft:black_candle{Enchantments: [{}], display: {Lore: ['{"text":"Runs Android 5.0.2 \\"Lollipop\\".","color":"dark_gray"}'], Name: '{"text":"Motorola Moto G 2","color":"gray"}'}, phone: 1b, ownphone: 1b} 1
execute if entity @s[nbt={HandItems:{tag:{iosphone:1b}}}] run give @a[tag=phone-detect-selected] minecraft:black_candle{Enchantments: [{}], display: {Lore: ['{"text":"Only 13 nanometers thick.","color":"dark_gray"}'], Name: '{"text":"iPhone XXGS Pro Max Plus+ Ultra","color":"gray"}'}, phone: 1b, iosphone: 1b} 1
data modify entity @s HandItems set value [{},{}]
execute as @a[tag=phone-detect-selected] run function generated:story/phone/call
tag @a remove phone-detect-selected
