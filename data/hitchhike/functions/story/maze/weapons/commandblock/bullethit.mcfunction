tag @e[sort=nearest,distance=..2,limit=1,nbt={ActiveEffects:[{Id:25b}]}] add maze-shulker-hit

execute as @e[tag=maze-shulker-hit] at @s run function hitchhike:story/maze/weapons/commandblock/onhit
execute if predicate hitchhike:continuebullets as @e[tag=maze-shulker-hit] at @s positioned ^ ^1 ^ run function hitchhike:story/maze/weapons/commandblock/summonbullet
effect clear @e[tag=maze-shulker-hit] levitation

tag @e remove maze-shulker-hit

kill @s