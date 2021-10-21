execute as @e[type=marker,tag=maze-anvil] at @s unless entity @e[distance=..3,tag=maze-anvil,type=falling_block] run scoreboard players add @s maze-weapon-age 0

# execute as @e[type=marker,tag=maze-anvil,scores={maze-weapon-age=30..}] at @s run function hitchhike:story/maze/mobs/johnny/killanvil

scoreboard players add @e[type=marker,tag=maze-anvil,scores={maze-weapon-age=0..}] maze-weapon-age 1