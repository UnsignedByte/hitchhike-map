scoreboard players operation oq-6-0-0 q-6 = q-6-0-0 q-6
scoreboard players set q-6-0-0 q-6 0
execute if entity @a[nbt={Inventory:[{id: "minecraft:potion", tag: {cost: 999, pos: '899.7 64.75 -160.75', display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"\"}","{\"text\":\"Sold (9.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}]] run scoreboard players add q-6-0-0 q-6 1
scoreboard players operation q-6-0-0 q-6 *= 100 const
scoreboard players operation q-6-0-0 q-6 *= 100 const
scoreboard players operation q-6-0-0 q-6 /= 100 const
execute unless score q-6-0-0 q-6 matches ..100 run scoreboard players set q-6-0-0 q-6 100
