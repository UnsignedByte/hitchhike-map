data modify entity @e[tag=npc-simon,limit=1] HandItems[0] set value {Count: 1b, id: "minecraft:potion", tag: {cost: 999, pos: '899.7 64.75 -160.75', display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"\"}","{\"text\":\"Sold (9.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}
execute at @e[tag=npc-simon,limit=1] run clear @a[nbt={Inventory:[{id: "minecraft:potion", tag: {cost: 999, pos: '899.7 64.75 -160.75', display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"\"}","{\"text\":\"Sold (9.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b}}]},sort=nearest,limit=1] minecraft:potion{cost: 999, pos: '899.7 64.75 -160.75', display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","bold":true,"italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"\"}","{\"text\":\"Sold (9.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, sold: 1b} 1
execute at @e[tag=npc-simon,limit=1] run playsound minecraft:entity.item.pickup neutral @a ~ ~ ~ 1 1
schedule function generated:story/simon/drink-0 12t
