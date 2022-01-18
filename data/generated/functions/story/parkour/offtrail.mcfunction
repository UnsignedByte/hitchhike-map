tag @a remove parkour-offtrail
execute as @a[gamemode=adventure,nbt={OnGround:1b}] at @s unless block ~-0.3 ~-0.1 ~-0.3 andesite_stairs unless block ~-0.3 ~-0.1 ~0.3 andesite_stairs unless block ~0.3 ~-0.1 ~-0.3 andesite_stairs unless block ~0.3 ~-0.1 ~0.3 andesite_stairs unless block ~-0.3 ~-0.1 ~-0.3 andesite_slab unless block ~-0.3 ~-0.1 ~0.3 andesite_slab unless block ~0.3 ~-0.1 ~-0.3 andesite_slab unless block ~0.3 ~-0.1 ~0.3 andesite_slab unless block ~-0.3 ~-0.1 ~-0.3 light_gray_concrete_powder unless block ~-0.3 ~-0.1 ~0.3 light_gray_concrete_powder unless block ~0.3 ~-0.1 ~-0.3 light_gray_concrete_powder unless block ~0.3 ~-0.1 ~0.3 light_gray_concrete_powder unless block ~-0.3 ~-0.1 ~-0.3 dirt_path unless block ~-0.3 ~-0.1 ~0.3 dirt_path unless block ~0.3 ~-0.1 ~-0.3 dirt_path unless block ~0.3 ~-0.1 ~0.3 dirt_path unless block ~-0.3 ~-0.1 ~-0.3 coarse_dirt unless block ~-0.3 ~-0.1 ~0.3 coarse_dirt unless block ~0.3 ~-0.1 ~-0.3 coarse_dirt unless block ~0.3 ~-0.1 ~0.3 coarse_dirt run tag @s add parkour-offtrail
execute as @a[tag=parkour-offtrail] at @s if block ~-0.3 ~0 ~-0.3 air if block ~-0.3 ~0 ~0.3 air if block ~0.3 ~0 ~-0.3 air if block ~0.3 ~0 ~0.3 air if block ~-0.3 ~1 ~-0.3 air if block ~-0.3 ~1 ~0.3 air if block ~0.3 ~1 ~-0.3 air if block ~0.3 ~1 ~0.3 air run tag @s remove parkour-offtrail
effect give @a[tag=parkour-offtrail] slowness 1 255 true
effect give @a[tag=parkour-offtrail] jump_boost 1 128 true
title @s actionbar {"text":"Please return to the trail!","color":"red"}
scoreboard players add @a[tag=parkour-offtrail] parkour-offtrail 1
scoreboard players reset @a[tag=!parkour-offtrail,nbt={OnGround:1b}] parkour-offtrail
execute as @e[tag=parkour-offtrail,scores={parkour-offtrail=100..}] run function generated:story/parkour/respawn
