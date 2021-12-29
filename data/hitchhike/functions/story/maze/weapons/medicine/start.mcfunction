effect give @s nausea 5 0 true
effect give @s health_boost 10 2 true
effect give @s absorption 10 1 true
effect give @s resistance 5 1 true
effect give @s fire_resistance 5 0 true

summon potion 0 0 0 {Tags:["maze-weapon-potion-init"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionColor:14363368,CustomPotionEffects:[{Id:2b,Amplifier:3b,Duration:200},{Id:4b,Amplifier:1b,Duration:300},{Id:9b,Amplifier:0b,Duration:300},{Id:15b,Amplifier:0b,Duration:300},{Id:18b,Amplifier:2b,Duration:200},{Id:20b,Amplifier:9b,Duration:200},{Id:24b,Amplifier:0b,Duration:300},{Id:25b,Amplifier:1b,Duration:100}],Enchantments:[{}]}}}
execute at @s anchored eyes run tp @e[tag=maze-weapon-potion-init] ^ ^ ^1
execute store result entity @e[tag=maze-weapon-potion-init,limit=1] Motion[0] double 0.001 run data get entity @e[tag=selected-weapon-item,limit=1] Motion[0] 1750
execute store result entity @e[tag=maze-weapon-potion-init,limit=1] Motion[1] double 0.001 run data get entity @e[tag=selected-weapon-item,limit=1] Motion[1] 1750
execute store result entity @e[tag=maze-weapon-potion-init,limit=1] Motion[2] double 0.001 run data get entity @e[tag=selected-weapon-item,limit=1] Motion[2] 1750
tag @e remove maze-weapon-potion-init