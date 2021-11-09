scoreboard players operation #tmp maze-connections = @s maze-connections
scoreboard players operation #tmp maze-tile-type = @s maze-tile-type
execute as @e[tag=maze-tile] if score @s maze-connections = #tmp maze-connections if score @s maze-tile-type = #tmp maze-tile-type run tag @s add maze-tile-selectable
execute at @e[tag=maze-tile-selectable,sort=random,limit=1] run clone ~-4 ~-4 ~-4 ~4 ~4 ~4 -1004 196 -4
clone -1004 196 -4 -996 204 4 ~-4 ~-4 ~-4 
setblock ~-8.5 ~-8.5 ~-8.5 spawner{SpawnCount:5,SpawnRange:4,Delay:20,MinSpawnDelay:20,MaxSpawnDelay:100,MaxNearbyEntities:15,RequiredPlayerRange:15,SpawnData:{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["maze-mob","maze-mob-spawn-attempt"]}}
setblock ~-8.5 ~-8.5 ~8.5 spawner{SpawnCount:5,SpawnRange:4,Delay:20,MinSpawnDelay:20,MaxSpawnDelay:100,MaxNearbyEntities:15,RequiredPlayerRange:15,SpawnData:{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["maze-mob","maze-mob-spawn-attempt"]}}
setblock ~-8.5 ~8.5 ~-8.5 spawner{SpawnCount:5,SpawnRange:4,Delay:20,MinSpawnDelay:20,MaxSpawnDelay:100,MaxNearbyEntities:15,RequiredPlayerRange:15,SpawnData:{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["maze-mob","maze-mob-spawn-attempt"]}}
setblock ~-8.5 ~8.5 ~8.5 spawner{SpawnCount:5,SpawnRange:4,Delay:20,MinSpawnDelay:20,MaxSpawnDelay:100,MaxNearbyEntities:15,RequiredPlayerRange:15,SpawnData:{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["maze-mob","maze-mob-spawn-attempt"]}}
setblock ~8.5 ~-8.5 ~-8.5 spawner{SpawnCount:5,SpawnRange:4,Delay:20,MinSpawnDelay:20,MaxSpawnDelay:100,MaxNearbyEntities:15,RequiredPlayerRange:15,SpawnData:{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["maze-mob","maze-mob-spawn-attempt"]}}
setblock ~8.5 ~-8.5 ~8.5 spawner{SpawnCount:5,SpawnRange:4,Delay:20,MinSpawnDelay:20,MaxSpawnDelay:100,MaxNearbyEntities:15,RequiredPlayerRange:15,SpawnData:{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["maze-mob","maze-mob-spawn-attempt"]}}
setblock ~8.5 ~8.5 ~-8.5 spawner{SpawnCount:5,SpawnRange:4,Delay:20,MinSpawnDelay:20,MaxSpawnDelay:100,MaxNearbyEntities:15,RequiredPlayerRange:15,SpawnData:{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["maze-mob","maze-mob-spawn-attempt"]}}
setblock ~8.5 ~8.5 ~8.5 spawner{SpawnCount:5,SpawnRange:4,Delay:20,MinSpawnDelay:20,MaxSpawnDelay:100,MaxNearbyEntities:15,RequiredPlayerRange:15,SpawnData:{id:"minecraft:area_effect_cloud",Duration:2147483647,Tags:["maze-mob","maze-mob-spawn-attempt"]}}
tag @e[tag=maze-tile] remove maze-tile-selectable
tag @s remove maze-visited
