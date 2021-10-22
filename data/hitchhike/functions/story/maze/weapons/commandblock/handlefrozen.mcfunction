execute if predicate hitchhike:spreadfreeze as @e[tag=maze-mob,type=!player,tag=!maze-mob-frozen,distance=..3,sort=random,limit=1] run function hitchhike:story/maze/weapons/commandblock/onhit

scoreboard players remove @s maze-weapon-age 1

execute if score @s maze-weapon-age matches 0 run data modify entity @s NoAI set value 0
execute if score @s maze-weapon-age matches 0 run tag @s remove maze-mob-frozen