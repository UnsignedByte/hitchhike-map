summon minecraft:marker ~ ~ ~ {Tags:["thrown-item-marker-init","thrown-item","maze-weapon-spoon"]}

execute positioned ~ ~-0.4 ~ anchored eyes run tp @e[tag=thrown-item-marker-init] ^ ^ ^0.5 ~ ~

execute as @e[tag=thrown-item-marker-init] run function hitchhike:story/maze/weapons/spoon/initmarker

function hitchhike:story/maze/weapons/spoon/tick