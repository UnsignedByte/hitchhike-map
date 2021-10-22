scoreboard players set #rotX vars 0
scoreboard players set #rotY vars 0
scoreboard players set #rotZ vars 0
execute at @e[tag=maze-mob,distance=0.01..6,sort=random,limit=5] positioned ~ ~3 ~ run function hitchhike:story/maze/mobs/johnny/anvil
