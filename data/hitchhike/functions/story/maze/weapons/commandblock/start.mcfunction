
execute anchored eyes run tp @e[tag=maze-weapon-init] ^ ^ ^ ~ ~

execute as @e[tag=maze-weapon-init] at @s run function hitchhike:story/maze/weapons/commandblock/starttrail
execute as @e[tag=maze-weapon-init] at @s run function hitchhike:story/maze/weapons/commandblock/starttrail
execute as @e[tag=maze-weapon-init] at @s run function hitchhike:story/maze/weapons/commandblock/starttrail
execute at @e[tag=maze-weapon-init] run playsound minecraft:block.end_gateway.spawn player @a ~ ~ ~ 1 1.3
execute run function hitchhike:story/maze/weapons/commandblock/starttrail
execute as @e[tag=maze-weapon-init] at @s run function hitchhike:story/maze/weapons/commandblock/summonbullets
