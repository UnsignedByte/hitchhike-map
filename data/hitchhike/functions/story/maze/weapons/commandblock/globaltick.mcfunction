execute as @e[tag=maze-mob-frozen] run function hitchhike:story/maze/weapons/commandblock/handlefrozen

execute as @e[tag=maze-shulker-bullet-marker] at @s unless entity @e[tag=maze-shulker-bullet,distance=..0.5] run function hitchhike:story/maze/weapons/commandblock/bullethit