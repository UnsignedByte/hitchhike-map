tag @e[sort=nearest,distance=..2,limit=1,nbt={ActiveEffects:[{Id:25b}]}] add maze-shulker-hit

execute as @e[tag=maze-shulker-hit] at @s run function hitchhike:story/maze/weapons/commandblock/onhit
execute at @e[tag=maze-shulker-hit] run run function hitchhike:story/maze/weapons/commandblock/summonbullets


tag @e remove maze-shulker-hit

kill @s