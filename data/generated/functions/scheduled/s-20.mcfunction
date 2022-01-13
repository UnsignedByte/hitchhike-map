execute if score hurm-done vars matches 1 run give @a[nbt=!{Inventory:[{tag:{compass:1b}}]}] minecraft:compass{display: {Name: '{"text":"Compass","color":"aqua"}', Lore: ['[{"text":"Points the way to your destination.","color":"dark_gray"}]', '[""]', '[{"text":"Throw it on the ground to","color":"dark_gray"}]', '[{"text":"restart from checkpoint.","color":"dark_gray"}]']}, compass: 1b, HideFlags: 127, LodestoneDimension: "minecraft:overworld", LodestoneTracked: 0b, LodestonePos: {X: 986, Y: 255, Z: 563}} 1
scoreboard players add @e[tag=lake-boat,type=boat] lake-entity-age 1
# Protect boats with riders
tag @e[tag=lake-boat,type=boat,x=1073,y=114,z=390,dx=1,dz=2] add lake-boat-protected
tag @e[tag=lake-boat,type=boat,tag=!lake-boat-protected] add match-selectable
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat",Tags:["lake-boat"]}}}] run function hitchhike:story/lake/protectboat
scoreboard players reset @e[tag=lake-boat-protected] lake-entity-age
tag @e remove lake-boat-protected
execute as @e[tag=lake-boat,type=boat,scores={lake-entity-age=5..}] run data modify entity @s Motion[1] set value -0.3
scoreboard players set @e[tag=lake-boat,type=boat,scores={lake-entity-age=5..}] 0
execute at @e[tag=checkpoint-marker] run particle minecraft:happy_villager ~ ~1.475 ~ 0.09 0.05 0.09 0 1
#> Teleport out softlocked items
tp @e[type=item,x=891,y=64,z=-153,dx=0,dy=1,dz=0] 891 65 -154
function generated:story/fountain/jar/updateguess
execute as @e[tag=maze-mob,type=bee] at @s run data modify entity @s AngryAt set from entity @p UUID
execute as @e[tag=maze-shulker-bullet] at @s run data modify entity @s Target set from entity @e[tag=maze-mob,distance=..10,sort=nearest,limit=1] UUID
execute as @e[tag=maze-mob,type=bee] run data modify entity @s AngerTime set value 2147483647
execute as @e[tag=maze-mob,type=bee] run data modify entity @s HasStung set value 0
execute as @e[tag=maze-mob,type=iron_golem] at @s run data modify entity @s AngryAt set from entity @p UUID
execute as @e[tag=maze-mob,type=iron_golem] run data modify entity @s AngerTime set value 2147483647
scoreboard players set mobcount maze 0
execute as @e[tag=maze-mob,type=!arrow,type=!player,tag=!maze-mob-spawn-attempt] run scoreboard players add mobcount maze 1
execute if score enabled maze matches 1 if score mobcount maze matches ..40 run function hitchhike:story/maze/mobs/attemptsummon
execute if score enabled maze matches 1 as @e[tag=maze-headswap] run function generated:story/maze/mobs/move/magma/swaphead
# make names visible only in range
execute as @e[tag=npc] run data modify entity @s CustomNameVisible set value 0
execute at @a as @e[tag=npc,distance=..10] run data modify entity @s CustomNameVisible set value 1
# update entities with special tags
execute as @e[type=villager,tag=baby] run data modify entity @s Age set value -30
effect give @e[tag=invisible] minecraft:invisibility 2 0 true
schedule function generated:scheduled/s-20 20t
