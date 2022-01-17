scoreboard players operation oq-8-0-1 q-8 = q-8-0-1 q-8
scoreboard players set q-8-0-1 q-8 0
execute if entity @a[nbt={Inventory:[{id: "minecraft:potion", tag: {cost: 999, display: {Name: '{"text":"La Croix Sparkling Water","color":"dark_aqua","italic":true}', Lore: ["{\"text\":\"Water for people\",\"color\":\"aqua\",\"italic\":false}","{\"text\":\"who hate money\",\"color\":\"aqua\"}","{\"text\":\"(and water).\",\"color\":\"aqua\"}","{\"text\":\"\"}","{\"text\":\"Sold (9.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, HideFlags: 127, CustomPotionEffects: [{Id: 2b, Amplifier: 0b, Duration: 200}, {Id: 4b, Amplifier: 1b, Duration: 400}, {Id: 15b, Amplifier: 0b, Duration: 20}, {Id: 17b, Amplifier: 100b, Duration: 80}, {Id: 18b, Amplifier: 9b, Duration: 1200}], Potion: "minecraft:awkward", CustomPotionColor: 2799851, store: "safeway", item: "lacroix", sold: 1b}}]},x=939,y=69,z=181,dx=6,dy=2,dz=5] run scoreboard players add q-8-0-1 q-8 1
execute if score -lacroix story-simon matches 1 run scoreboard players add q-8-0-1 q-8 1
scoreboard players operation q-8-0-1 q-8 *= 100 const
scoreboard players operation q-8-0-1 q-8 *= 1 const
scoreboard players operation q-8-0-1 q-8 /= 200 const
execute unless score q-8-0-1 q-8 matches ..1 run scoreboard players set q-8-0-1 q-8 1
