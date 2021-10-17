execute positioned ~ ~-0.4 ~ anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["thrown-item-marker-init","thrown-item-host","thrown-spoon"]}

execute rotated as @s as @e[tag=thrown-item-marker-init] positioned as @s tp @s ~ ~ ~ ~ ~

execute as @e[tag=thrown-item-marker-init] run function hitchhike:story/maze/weapons/spoon/initmarker