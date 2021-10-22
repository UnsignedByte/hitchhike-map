execute as @e[tag=maze-mob-frozen] run function hitchhike:story/maze/weapons/commandblock/handlefrozen

say @e[tag=maze-shulker-bullet,nbt=!{Target:[1,1,1,1]}]

execute as @e[tag=maze-shulker-bullet,nbt=!{Target:[1,1,1,1]}] at @s run data modify entity @s Target set from entity @e[tag=maze-mob,distance=..10,sort=random,limit=1] UUID