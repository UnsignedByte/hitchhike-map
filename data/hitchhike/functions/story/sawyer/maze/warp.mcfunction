#> Warp player into the maze and start cutscene if necessary

tag @p add maze-warping
effect give @a[tag=maze-warping] regeneration 1000000 0 true
item replace entity @a[tag=maze-warping] armor.feet with leather_boots{display:{Name:'{"text":"Clown Shoes","color":"red","bold":true,"italic":true}',Lore:['{"text":"For the Clown","color":"gray"}','{"text":"Among Us.","color":"gray"}'],color:16711680},HideFlags:127,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:feather_falling",lvl:5s},{id:"minecraft:blast_protection",lvl:3s},{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:depth_strider",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Operation:0,UUID:[I;2018768999,344673846,-1321107652,-918471489]}]} 1
execute unless entity @e[tag=maze-boss] unless entity @a[tag=maze-mob] unless entity @e[tag=path-start] run tp @a[tag=maze-warping] @e[tag=maze-start,limit=1]
execute unless entity @e[tag=maze-boss] unless entity @a[tag=maze-mob] run tp @a[tag=maze-warping] @e[tag=path-start,limit=1]
execute if entity @e[tag=maze-boss] unless entity @a[tag=maze-mob] run tp @a[tag=maze-warping] @e[tag=path-goal,limit=1]
tp @a[tag=maze-warping] @r[tag=maze-mob]
tag @a[tag=maze-warping] add maze-mob
tag @a remove maze-warping

execute unless score maze-started story-sawyer matches 1 run function hitchhike:story/sawyer/maze/startseq