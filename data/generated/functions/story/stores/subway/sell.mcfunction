execute as @e[tag=paying,nbt={Item:{id: "minecraft:paper", tag: {cost: 999, sign: "minecraft:jungle_wall_sign[facing=west]", display: {Name: '{"text":"Gluten-Free Vegan Berry Sub","color":"#53cf11"}', Lore: ["{\"text\":\"Healthy and still delicious.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (9.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, Unbreakable: 1b, HideFlags: 127, store: "subway", sold: 0b}}}] run data merge entity @s {Item:{id: "minecraft:sweet_berries", tag: {cost: 999, sign: "minecraft:jungle_wall_sign[facing=west]", display: {Name: '{"text":"Gluten-Free Vegan Berry Sub","color":"#53cf11"}', Lore: ["{\"text\":\"Healthy and still delicious.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (9.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, Unbreakable: 1b, HideFlags: 127, store: "subway", sold: 1b}}}
execute as @e[tag=paying,nbt={Item:{id: "minecraft:paper", tag: {cost: 899, sign: "minecraft:jungle_wall_sign[facing=west]", display: {Name: '{"text":"Whole Wheat Sub","color":"#d6bc89"}', Lore: ["{\"text\":\"Perfectly toasted buns.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (8.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, Unbreakable: 1b, HideFlags: 127, store: "subway", sold: 0b}}}] run data merge entity @s {Item:{id: "minecraft:bread", tag: {cost: 899, sign: "minecraft:jungle_wall_sign[facing=west]", display: {Name: '{"text":"Whole Wheat Sub","color":"#d6bc89"}', Lore: ["{\"text\":\"Perfectly toasted buns.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (8.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, Unbreakable: 1b, HideFlags: 127, store: "subway", sold: 1b}}}
execute as @e[tag=paying,nbt={Item:{id: "minecraft:paper", tag: {cost: 1199, sign: "minecraft:jungle_wall_sign[facing=west]", display: {Name: '{"text":"Meat Lovers\' Sub","color":"#a11538"}', Lore: ["{\"text\":\"Made with fresh chicken.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (11.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, Unbreakable: 1b, HideFlags: 127, store: "subway", sold: 0b}}}] run data merge entity @s {Item:{id: "minecraft:cooked_chicken", tag: {cost: 1199, sign: "minecraft:jungle_wall_sign[facing=west]", display: {Name: '{"text":"Meat Lovers\' Sub","color":"#a11538"}', Lore: ["{\"text\":\"Made with fresh chicken.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (11.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, Unbreakable: 1b, HideFlags: 127, store: "subway", sold: 1b}}}
execute as @e[tag=paying,nbt={Item:{id: "minecraft:paper", tag: {cost: 99, sign: "minecraft:jungle_wall_sign[facing=west]", display: {Name: '{"text":"Soda","color":"#916443"}', Lore: ["{\"text\":\"Fizzy Goodness.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (0.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, Unbreakable: 1b, HideFlags: 127, CustomPotionEffects: [{Id: 18b, Amplifier: 0b, Duration: 300}, {Id: 19b, Amplifier: 9b, Duration: 200}, {Id: 21b, Amplifier: 3b, Duration: 400}, {Id: 22b, Amplifier: 1b, Duration: 200}, {Id: 23b, Amplifier: 0b, Duration: 5}], Potion: "minecraft:awkward", CustomPotionColor: 3680800, store: "subway", sold: 0b}}}] run data merge entity @s {Item:{id: "minecraft:potion", tag: {cost: 99, sign: "minecraft:jungle_wall_sign[facing=west]", display: {Name: '{"text":"Soda","color":"#916443"}', Lore: ["{\"text\":\"Fizzy Goodness.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (0.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, Unbreakable: 1b, HideFlags: 127, CustomPotionEffects: [{Id: 18b, Amplifier: 0b, Duration: 300}, {Id: 19b, Amplifier: 9b, Duration: 200}, {Id: 21b, Amplifier: 3b, Duration: 400}, {Id: 22b, Amplifier: 1b, Duration: 200}, {Id: 23b, Amplifier: 0b, Duration: 5}], Potion: "minecraft:awkward", CustomPotionColor: 3680800, store: "subway", sold: 1b}}}
tag @e[tag=paying,type=item,x=950,y=64,z=-147,dx=2,dy=1,dz=2] add just-paid
tag @e[tag=paying,type=item,x=950,y=64,z=-147,dx=2,dy=1,dz=2] remove paying
tp @e[type=item,tag=just-paid] 950.5000 64.5000 -144.5000
execute as @e[type=item,tag=just-paid] run data modify entity @s Age set value 0
tag @e remove just-paid
