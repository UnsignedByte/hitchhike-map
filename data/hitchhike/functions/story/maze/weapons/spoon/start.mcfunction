execute positioned ~ ~-0.4 ~ anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["thrown-item-marker-init","thrown-item-host","thrown-spoon"]}

execute as @e[tag=thrown-item-marker-init,tag=thrown-spoon] run function hitchhike:story/maze/weapons/spoon/initmarker