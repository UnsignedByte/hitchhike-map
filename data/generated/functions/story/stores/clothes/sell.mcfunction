execute as @e[tag=paying,nbt={Item:{id: "minecraft:leather_boots", tag: {cost: 2999, rot: '-90F,0F', display: {Name: '{"text":"Plain Boots (Blue)","color":"gray"}', Lore: ["{\"text\":\"Affordable and Fashionable.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (29.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"], color: 2378639}, Unbreakable: 1b, HideFlags: 127, store: "clothes", sold: 0b}}}] run data merge entity @s {Item:{id: "minecraft:leather_boots", tag: {cost: 2999, rot: '-90F,0F', display: {Name: '{"text":"Plain Boots (Blue)","color":"gray"}', Lore: ["{\"text\":\"Affordable and Fashionable.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (29.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"], color: 2378639}, Unbreakable: 1b, HideFlags: 127, store: "clothes", sold: 1b}}}
execute as @e[tag=paying,nbt={Item:{id: "minecraft:leather_boots", tag: {cost: 2999, rot: '-90F,0F', display: {Name: '{"text":"Plain Boots (Brown)","color":"gray"}', Lore: ["{\"text\":\"Affordable and Fashionable.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (29.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"], color: 7688983}, Unbreakable: 1b, HideFlags: 127, store: "clothes", sold: 0b}}}] run data merge entity @s {Item:{id: "minecraft:leather_boots", tag: {cost: 2999, rot: '-90F,0F', display: {Name: '{"text":"Plain Boots (Brown)","color":"gray"}', Lore: ["{\"text\":\"Affordable and Fashionable.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (29.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"], color: 7688983}, Unbreakable: 1b, HideFlags: 127, store: "clothes", sold: 1b}}}
execute as @e[tag=paying,nbt={Item:{id: "minecraft:leather_boots", tag: {cost: 2999, rot: '90F,0F', display: {Name: '{"text":"Plain Boots (Gray)","color":"gray"}', Lore: ["{\"text\":\"Affordable and Fashionable.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (29.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"], color: 2171169}, Unbreakable: 1b, HideFlags: 127, store: "clothes", sold: 0b}}}] run data merge entity @s {Item:{id: "minecraft:leather_boots", tag: {cost: 2999, rot: '90F,0F', display: {Name: '{"text":"Plain Boots (Gray)","color":"gray"}', Lore: ["{\"text\":\"Affordable and Fashionable.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (29.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"], color: 2171169}, Unbreakable: 1b, HideFlags: 127, store: "clothes", sold: 1b}}}
execute as @e[tag=paying,nbt={Item:{id: "minecraft:leather_boots", tag: {cost: 10999, rot: '90F,0F', display: {Name: '{"text":"Leather Hiking Boots","color":"#9c6b14"}', Lore: ["{\"text\":\"Built to last.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Unsold (109.99B)\",\"italic\":true,\"color\":\"dark_gray\"}"], color: 12755819}, Enchantments: [{id:"minecraft:feather_falling",lvl:2s},{id:"minecraft:depth_strider",lvl:2s}], Unbreakable: 1b, HideFlags: 127, store: "clothes", sold: 0b}}}] run data merge entity @s {Item:{id: "minecraft:leather_boots", tag: {cost: 10999, rot: '90F,0F', display: {Name: '{"text":"Leather Hiking Boots","color":"#9c6b14"}', Lore: ["{\"text\":\"Built to last.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (109.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"], color: 12755819}, Enchantments: [{id:"minecraft:feather_falling",lvl:2s},{id:"minecraft:depth_strider",lvl:2s}], Unbreakable: 1b, HideFlags: 127, store: "clothes", sold: 1b}}}
tag @e[tag=paying,type=item,x=977,y=65,z=-169,dx=9,dy=0,dz=1] add just-paid
tag @e[tag=paying,type=item,x=977,y=65,z=-169,dx=9,dy=0,dz=1] remove paying
tp @e[type=item,tag=just-paid] 986.5000 65.0000 -167.5000
execute as @e[type=item,tag=just-paid] run data modify entity @s Age set value 0
tag @e remove just-paid
