function hitchhike:story/maze/mobs/tick

function hitchhike:story/maze/weapons/tick

execute if score enabled maze matches 1 run tag @a add maze-mob

execute as @a[tag=maze-mob,tag=hitdetect-hitter] at @s run function generated:story/maze/weapons/detecthit

execute as @e[tag=maze-mob-frozen,nbt={TicksFrozen:0}] run data modify entity @s NoAI set value 0
tag @e[tag=maze-mob-frozen,nbt={TicksFrozen:0}] remove maze-mob-frozen