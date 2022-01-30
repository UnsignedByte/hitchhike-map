scoreboard players operation #tmp phone-detect-id = @s phone-detect-id
execute as @a if score @s phone-detect-id = #tmp phone-detect-id run tag @s add phone-detect-selected
execute if score android song-playing matches 0 if score ios song-playing matches 0 if entity @s[nbt={HandItems:[{tag:{iosphone:1b}}]}] run tag @a[tag=phone-detect-selected] add song-ios
execute if score android song-playing matches 0 if score ios song-playing matches 0 if entity @s[nbt={HandItems:[{tag:{androidphone:1b}}]}] run tag @a[tag=phone-detect-selected] add song-android
execute if entity @s[nbt={HandItems:[{tag:{iosphone:1b}}]}] run give @a[tag=phone-detect-selected] minecraft:black_candle{Enchantments: [{}], display: {Lore: ['{"text":"Only 13 nanometers thick.","color":"dark_gray"}'], Name: '{"text":"iPhone XXGS Pro Max Plus+ Ultra","color":"gray"}'}, phone: 1b, iosphone: 1b} 1
execute if entity @s[nbt={HandItems:[{tag:{androidphone:1b}}]}] run give @a[tag=phone-detect-selected] minecraft:black_candle{Enchantments: [{}], display: {Lore: ['{"text":"Runs Android 5.0.2 \\"Lollipop\\".","color":"dark_gray"}'], Name: '{"text":"Motorola Moto G 2","color":"gray"}'}, phone: 1b, androidphone: 1b} 1
data modify entity @s HandItems set value [{},{}]
execute unless score #phone-enabled vars matches 1 as @a[tag=phone-detect-selected] run function generated:story/phone/failedcall
execute if score #phone-enabled vars matches 1 if score android song-playing matches 0 if score ios song-playing matches 0 as @a[tag=phone-detect-selected] run function generated:story/phone/startcall
tag @a remove phone-detect-selected
