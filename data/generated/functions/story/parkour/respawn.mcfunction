scoreboard players operation #tmp checkpoint-id = @s checkpoint-id
execute as @e[tag=checkpoint-marker] if score @s checkpoint-id = #tmp checkpoint-id run tag @s add checkpoint-candidate
execute at @e[tag=checkpoint-candidate,limit=1] run tp @s ~ ~1.375 ~
execute at @s if entity @e[tag=checkpoint-candidate] run playsound minecraft:block.respawn_anchor.deplete block @s ~ ~ ~ 0.5 2
give @s[nbt=!{Inventory:[{tag:{compass:1b}}]}] minecraft:compass{display: {Name: '{"text":"Compass","color":"aqua"}', Lore: ['[{"text":"Points the way to your destination.","color":"dark_gray"}]', '[""]', '[{"text":"Throw it on the ground to","color":"dark_gray"}]', '[{"text":"restart from checkpoint.","color":"dark_gray"}]']}, compass: 1b, HideFlags: 127, LodestoneDimension: "minecraft:overworld", LodestoneTracked: 0b, LodestonePos: {X: 986, Y: 255, Z: 563}} 1
tag @e remove checkpoint-candidate
