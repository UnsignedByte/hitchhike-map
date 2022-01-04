execute as @e[tag=paying,nbt={Item:{tag:{sold:0b,store:"ramen",item:"tonkotsu"}}}] run data merge entity @s {Item:{id: "minecraft:mushroom_stew", tag: {cost: 1499, display: {Name: '{"text":"Tonkotsu Ramen","color":"#bfa569"}', Lore: ["{\"text\":\"Using Rich Pork Broth.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (14.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, Unbreakable: 1b, HideFlags: 127, store: "ramen", item: "tonkotsu", sold: 1b}}}
execute as @e[tag=paying,nbt={Item:{tag:{sold:0b,store:"ramen",item:"shoyu"}}}] run data merge entity @s {Item:{id: "minecraft:beetroot_soup", tag: {cost: 1299, display: {Name: '{"text":"Shoyu Ramen","color":"#bd7d5c"}', Lore: ["{\"text\":\"Clear broth with soy sauce.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (12.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, Unbreakable: 1b, HideFlags: 127, store: "ramen", item: "shoyu", sold: 1b}}}
execute as @e[tag=paying,nbt={Item:{tag:{sold:0b,store:"ramen",item:"miso"}}}] run data merge entity @s {Item:{id: "minecraft:rabbit_stew", tag: {cost: 1399, display: {Name: '{"text":"Miso Ramen","color":"#b87f39"}', Lore: ["{\"text\":\"Sweet, Tangy Miso paste.\",\"italic\":true,\"color\":\"dark_gray\"}","{\"text\":\"\"}","{\"text\":\"Sold (13.99B)\",\"italic\":true,\"color\":\"dark_purple\"}"]}, Unbreakable: 1b, HideFlags: 127, store: "ramen", item: "miso", sold: 1b}}}
tag @e[tag=paying,type=item,x=996,y=65,z=-168,dx=0,dy=0,dz=2] add just-paid
tag @e[tag=paying,type=item,x=996,y=65,z=-168,dx=0,dy=0,dz=2] remove paying
tp @e[type=item,tag=just-paid] 996.5000 65.0000 -166.5000
execute as @e[type=item,tag=just-paid] run data modify entity @s Age set value 0
tag @e remove just-paid