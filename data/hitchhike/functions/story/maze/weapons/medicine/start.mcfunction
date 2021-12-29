effect give @s speed 10 1 true
effect give @s jump_boost 10 1 true
effect give @s nausea 10 0 true
effect give @s strength 15 4 true
effect give @s regeneration 10 1 true
effect give @s health_boost 15 2 true
effect give @s absorption 15 1 true
effect give @s resistance 10 0 true
effect give @s fire_resistance 10 0 true
effect give @s night_vision 20 0 true
effect give @s water_breathing 20 0 true
effect give @s conduit_power 10 0 true

execute at @s anchored eyes run summon potion ^ ^ ^1 {Tags:["maze-weapon-potion-init"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:8866613,CustomPotionEffects:[{Id:2b,Amplifier:3b,Duration:200},{Id:4b,Amplifier:1b,Duration:300},{Id:9b,Amplifier:0b,Duration:15},{Id:15b,Amplifier:0b,Duration:15},{Id:18b,Amplifier:2b,Duration:10},{Id:20b,Amplifier:9b,Duration:200},{Id:25b,Amplifier:1b,Duration:5}],Enchantments:[{}]}}}
execute store result entity @e[tag=maze-weapon-init,limit=1] Motion[0] double 2 run data get entity @e[tag=selected-weapon-item,limit=1] Motion[0]
execute store result entity @e[tag=maze-weapon-init,limit=1] Motion[1] double 2 run data get entity @e[tag=selected-weapon-item,limit=1] Motion[1]
execute store result entity @e[tag=maze-weapon-init,limit=1] Motion[2] double 2 run data get entity @e[tag=selected-weapon-item,limit=1] Motion[2]
tag @e remove maze-weapon-potion-init