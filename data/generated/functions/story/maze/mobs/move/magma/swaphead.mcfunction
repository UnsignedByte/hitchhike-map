scoreboard players set _rngm vars 12
function generated:rng/rng
execute if score rng vars matches 0 run data modify entity @s ArmorItems[3] set value {id:"minecraft:red_stained_glass",Count:1b}
execute if score rng vars matches 1 run data modify entity @s ArmorItems[3] set value {id:"minecraft:barrier",Count:1b}
execute if score rng vars matches 2 run data modify entity @s ArmorItems[3] set value {id:"minecraft:melon_slice",Count:1b}
execute if score rng vars matches 3 run data modify entity @s ArmorItems[3] set value {id:"minecraft:apple",Count:1b}
execute if score rng vars matches 4 run data modify entity @s ArmorItems[3] set value {id:"minecraft:redstone_block",Count:1b}
execute if score rng vars matches 5 run data modify entity @s ArmorItems[3] set value {id:"minecraft:red_mushroom",Count:1b}
execute if score rng vars matches 6 run data modify entity @s ArmorItems[3] set value {id:"minecraft:tnt",Count:1b}
execute if score rng vars matches 7 run data modify entity @s ArmorItems[3] set value {id:"minecraft:red_mushroom_block",Count:1b}
execute if score rng vars matches 8 run data modify entity @s ArmorItems[3] set value {id:"minecraft:red_dye",Count:1b}
execute if score rng vars matches 9 run data modify entity @s ArmorItems[3] set value {id:"minecraft:fermented_spider_eye",Count:1b}
execute if score rng vars matches 10 run data modify entity @s ArmorItems[3] set value {id:"minecraft:poppy",Count:1b}
execute if score rng vars matches 11 run data modify entity @s ArmorItems[3] set value {id:"minecraft:red_shulker_box",Count:1b}
