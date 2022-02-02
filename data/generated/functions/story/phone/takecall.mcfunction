scoreboard players operation #tmp phone-detect-id = @s phone-detect-id
execute as @a if score @s phone-detect-id = #tmp phone-detect-id run tag @s add phone-detect-selected
execute unless score android song-playing matches 1 unless score ios song-playing matches 1 if entity @s[nbt={HandItems:[{tag:{iosphone:1b}}]}] run tag @a[tag=phone-detect-selected] add song-ios
execute unless score android song-playing matches 1 unless score ios song-playing matches 1 if entity @s[nbt={HandItems:[{tag:{androidphone:1b}}]}] run tag @a[tag=phone-detect-selected] add song-android
execute if entity @s[nbt={HandItems:[{tag:{iosphone:1b}}]}] run give @a[tag=phone-detect-selected] minecraft:black_candle{Enchantments: [{}], display: {Lore: ['{"text":"Only 13 nanometers thick.","color":"gray"}','{"text":"Use it by right clicking","color":"blue"}','{"text":"while standing still.","color":"blue"}'], Name: '{"text":"iPhone XXGS Pro Max Plus+ Ultra","color":"gray"}'}, phone: 1b, iosphone: 1b} 1
execute if entity @s[nbt={HandItems:[{tag:{androidphone:1b}}]}] run give @a[tag=phone-detect-selected] minecraft:black_candle{Enchantments: [{}], display: {Lore: ['{"text":"Runs Android 5.0.2 \\"Lollipop\\".","color":"gray"}','{"text":"Use it by right clicking","color":"blue"}','{"text":"while standing still.","color":"blue"}'], Name: '{"text":"Motorola Moto G 2","color":"gray"}'}, phone: 1b, androidphone: 1b} 1
data modify entity @s HandItems set value [{},{}]
execute unless score #phone-enabled vars matches 1 as @a[tag=phone-detect-selected] run function generated:story/phone/failedcall
execute if score #phone-enabled vars matches 1 unless score android song-playing matches 1 unless score ios song-playing matches 1 as @a[tag=phone-detect-selected] run function generated:story/phone/startcall
tag @a remove phone-detect-selected
