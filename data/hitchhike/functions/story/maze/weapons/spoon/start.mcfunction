summon minecraft:marker ~ ~ ~ {Tags:["thrown-item-marker-init","thrown-item-host","thrown-spoon"]}

execute positioned ~ ~-0.4 ~ anchored eyes tp @e[tag=thrown-item-marker-init] ^ ^ ^1 ~ ~

execute as @e[tag=thrown-item-marker-init] run function hitchhike:story/maze/weapons/spoon/initmarker