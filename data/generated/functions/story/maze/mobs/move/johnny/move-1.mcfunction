scoreboard players set #rotX vars 0
scoreboard players set #rotY vars 0
scoreboard players set #rotZ vars 0
execute at @e[tag=maze-mob,distance=..6] positioned ~ ~2 ~ run function hitchhike:story/maze/mobs/johnny/anvil
