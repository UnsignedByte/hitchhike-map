summon minecraft:marker ~ ~ ~ {Tags:["maze-weapon-init","maze-weapon","maze-weapon-buildtool"]}
data modify entity @e[tag=maze-weapon-init,limit=1] data.PlayerUUID set from entity @s UUID
execute as @s at @s run function hitchhike:story/maze/weapons/buildtool/start
tag @e remove maze-weapon-init
