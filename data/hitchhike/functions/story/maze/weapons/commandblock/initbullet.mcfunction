tag @s remove maze-shulker-bullet-init

execute at @s run data modify entity @s Target set from entity @e[tag=maze-mob,distance=..10,sort=random,limit=1] UUID