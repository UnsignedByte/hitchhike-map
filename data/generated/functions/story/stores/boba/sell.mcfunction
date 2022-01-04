execute as @e[tag=paying,nbt={Item:{id: "minecraft:paper", tag: {cost: 549, sign: "minecraft:spruce_wall_sign[facing=south]", display: {Name: '{"text":"Milk Tea","color":"#9c7f5c"}', Lore: ["{\"text\":\"The classic.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (5.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, Unbreakable: 1b, HideFlags: 127, Potion: "minecraft:awkward", CustomPotionColor: 11899753, store: "boba", sold: 0b}}}] run data merge entity @s {Item:{id: "minecraft:potion", tag: {cost: 549, sign: "minecraft:spruce_wall_sign[facing=south]", display: {Name: '{"text":"Milk Tea","color":"#9c7f5c"}', Lore: ["{\"text\":\"The classic.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (5.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, Unbreakable: 1b, HideFlags: 127, Potion: "minecraft:awkward", CustomPotionColor: 11899753, store: "boba", sold: 1b}}}
execute as @e[tag=paying,nbt={Item:{id: "minecraft:paper", tag: {cost: 549, sign: "minecraft:spruce_wall_sign[facing=south]", display: {Name: '{"text":"Almond Milk Tea","color":"#9c8857"}', Lore: ["{\"text\":\"A Delicious Drupe.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (5.49B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, Unbreakable: 1b, HideFlags: 127, Potion: "minecraft:awkward", CustomPotionColor: 12098138, store: "boba", sold: 0b}}}] run data merge entity @s {Item:{id: "minecraft:potion", tag: {cost: 549, sign: "minecraft:spruce_wall_sign[facing=south]", display: {Name: '{"text":"Almond Milk Tea","color":"#9c8857"}', Lore: ["{\"text\":\"A Delicious Drupe.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (5.49B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, Unbreakable: 1b, HideFlags: 127, Potion: "minecraft:awkward", CustomPotionColor: 12098138, store: "boba", sold: 1b}}}
tag @e[tag=paying,type=item,x=996,y=65,z=-168,dx=0,dy=0,dz=2] add just-paid
tag @e[tag=paying,type=item,x=996,y=65,z=-168,dx=0,dy=0,dz=2] remove paying
tp @e[type=item,tag=just-paid] 996.5000 65.0000 -166.5000
execute as @e[type=item,tag=just-paid] run data modify entity @s Age set value 0
tag @e remove just-paid
