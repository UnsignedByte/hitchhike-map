scoreboard players set #tmpoffx car 0
scoreboard players set #tmpoffz car 0
scoreboard players set #tmp car 0
execute unless score @s car-velX matches 0.. positioned ~-1 ~-1 ~0 unless block ~ ~ ~ gray_concrete unless block ~ ~ ~ yellow_concrete unless block ~ ~ ~ white_concrete unless block ~ ~ ~ gray_concrete_powder unless block ~ ~ ~ white_concrete_powder unless block ~ ~ ~ deepslate unless block ~ ~ ~ smooth_quartz unless block ~ ~ ~ calcite unless block ~ ~ ~ blue_concrete_powder unless block ~ ~ ~ smooth_stone unless block ~ ~ ~ stone_stairs unless block ~ ~ ~ gravel unless block ~ ~ ~ stone unless block ~ ~ ~ cobblestone unless block ~ ~ ~ andesite unless block ~ ~ ~ cobbled_deepslate unless block ~ ~ ~ stone_bricks unless block ~ ~ ~ white_terracotta run scoreboard players set #tmp car 1
execute unless score @s car-velX matches 0.. positioned ~-1 ~ ~0 unless block ~ ~ ~ air unless block ~ ~ ~ void_air unless block ~ ~ ~ cave_air run scoreboard players set #tmp car 1
execute if score #tmp car matches 1 run scoreboard players set #tmpoffx car 1
# execute if score #tmp car matches 1 run scoreboard players set #tmpoffz car 1
scoreboard players set #tmp car 0
execute unless score @s car-velZ matches 0.. positioned ~0 ~-1 ~-1 unless block ~ ~ ~ gray_concrete unless block ~ ~ ~ yellow_concrete unless block ~ ~ ~ white_concrete unless block ~ ~ ~ gray_concrete_powder unless block ~ ~ ~ white_concrete_powder unless block ~ ~ ~ deepslate unless block ~ ~ ~ smooth_quartz unless block ~ ~ ~ calcite unless block ~ ~ ~ blue_concrete_powder unless block ~ ~ ~ smooth_stone unless block ~ ~ ~ stone_stairs unless block ~ ~ ~ gravel unless block ~ ~ ~ stone unless block ~ ~ ~ cobblestone unless block ~ ~ ~ andesite unless block ~ ~ ~ cobbled_deepslate unless block ~ ~ ~ stone_bricks unless block ~ ~ ~ white_terracotta run scoreboard players set #tmp car 1
execute unless score @s car-velZ matches 0.. positioned ~0 ~ ~-1 unless block ~ ~ ~ air unless block ~ ~ ~ void_air unless block ~ ~ ~ cave_air run scoreboard players set #tmp car 1
# execute if score #tmp car matches 1 run scoreboard players set #tmpoffx car 1
execute if score #tmp car matches 1 run scoreboard players set #tmpoffz car 1
scoreboard players set #tmp car 0
execute unless score @s car-velZ matches ..0 positioned ~0 ~-1 ~1 unless block ~ ~ ~ gray_concrete unless block ~ ~ ~ yellow_concrete unless block ~ ~ ~ white_concrete unless block ~ ~ ~ gray_concrete_powder unless block ~ ~ ~ white_concrete_powder unless block ~ ~ ~ deepslate unless block ~ ~ ~ smooth_quartz unless block ~ ~ ~ calcite unless block ~ ~ ~ blue_concrete_powder unless block ~ ~ ~ smooth_stone unless block ~ ~ ~ stone_stairs unless block ~ ~ ~ gravel unless block ~ ~ ~ stone unless block ~ ~ ~ cobblestone unless block ~ ~ ~ andesite unless block ~ ~ ~ cobbled_deepslate unless block ~ ~ ~ stone_bricks unless block ~ ~ ~ white_terracotta run scoreboard players set #tmp car 1
execute unless score @s car-velZ matches ..0 positioned ~0 ~ ~1 unless block ~ ~ ~ air unless block ~ ~ ~ void_air unless block ~ ~ ~ cave_air run scoreboard players set #tmp car 1
# execute if score #tmp car matches 1 run scoreboard players set #tmpoffx car 1
execute if score #tmp car matches 1 run scoreboard players set #tmpoffz car 1
scoreboard players set #tmp car 0
execute unless score @s car-velX matches ..0 positioned ~1 ~-1 ~0 unless block ~ ~ ~ gray_concrete unless block ~ ~ ~ yellow_concrete unless block ~ ~ ~ white_concrete unless block ~ ~ ~ gray_concrete_powder unless block ~ ~ ~ white_concrete_powder unless block ~ ~ ~ deepslate unless block ~ ~ ~ smooth_quartz unless block ~ ~ ~ calcite unless block ~ ~ ~ blue_concrete_powder unless block ~ ~ ~ smooth_stone unless block ~ ~ ~ stone_stairs unless block ~ ~ ~ gravel unless block ~ ~ ~ stone unless block ~ ~ ~ cobblestone unless block ~ ~ ~ andesite unless block ~ ~ ~ cobbled_deepslate unless block ~ ~ ~ stone_bricks unless block ~ ~ ~ white_terracotta run scoreboard players set #tmp car 1
execute unless score @s car-velX matches ..0 positioned ~1 ~ ~0 unless block ~ ~ ~ air unless block ~ ~ ~ void_air unless block ~ ~ ~ cave_air run scoreboard players set #tmp car 1
execute if score #tmp car matches 1 run scoreboard players set #tmpoffx car 1
# execute if score #tmp car matches 1 run scoreboard players set #tmpoffz car 1
execute if score #tmpoffx car matches 1 run scoreboard players operation @s car-velX /= -2 const
execute if score #tmpoffz car matches 1 run scoreboard players operation @s car-velZ /= -2 const
