summon minecraft:marker ~ ~ ~ {Tags:["thrown-item-marker-init","thrown-item","thrown-spoon"]}

execute positioned ~ ~-0.4 ~ anchored eyes run tp @e[tag=thrown-item-marker-init] ^ ^ ^0.5 ~ ~

execute positioned ~ ~ ~ as @e[tag=thrown-item-marker-init] run function hitchhike:story/maze/weapons/spoon/initmarker

function hitchhike:story/maze/weapons/spoon/tick